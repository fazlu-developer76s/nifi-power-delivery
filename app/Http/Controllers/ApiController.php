<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use PDF;
use App\Models\Blog;
use App\Models\CategoriesModal;
use App\Models\CmsModal;
use App\Models\Kycprocess;
use App\Models\Package;
use App\Models\PetCategory;
use App\Models\Service;
use App\Models\Testimonal;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Mail\Enquirys;
use App\Models\Booking;
use App\Models\Enquiry;
use App\Models\Gallary;
use App\Models\Page;
use App\Models\Pincode;
use App\Models\Property;
use App\Models\PropertyReview;
use App\Models\Seo;
use Illuminate\Support\Facades\Mail;

class ApiController extends Controller
{
    public function get_aadhar_otp(Request $post)
    {
        $rules = array(
            'register_aadhar' => 'required'
        );
        $validate = \Myhelper::FormValidator($rules, $post);
        if ($validate != "no") {
            return $validate;
        }
        $aes_key = "3c8cdd3e3028795dacf67ef25a89509a989768b067a7b591cc468954ad4e1620";
        $aes_iv = "ec5bad40b2162069";
        $user_data = array(
            'p1' => "Advance",
            "p2" => $post->register_aadhar,
            "p3" => "sdfgs6848"
        );
        $encrypt_data = \Myhelper::newEncrypt(json_encode($user_data), $aes_key, $aes_iv);
        $aadharRecord = \DB::table("kycdatas")->where("type", "aadhar")->where('number', $post->register_aadhar)->first();
        if (!$aadharRecord) {
            $url = "http://192.168.0.181:8000/api/v1/validate/aadhar";
            $header = array(
                'Accept: application/json',
                'Content-Type: application/json',
                'client_id: 98dfe4dbc68bb6948a85137927f857e0',
                'x-api-key: 596e6fc87495e86afb31437b866cce1e00a1248169a90f0fa8eefc230a0b7af4',
            );
            $parameter['body'] = $encrypt_data;
            $result = \Myhelper::curl($url, "POST", json_encode($parameter), $header, "yes", "report", $post->register_aadhar);
            $dec_res = json_decode($result['response']);
            $decrypt_data = \Myhelper::newDecrypt($dec_res->body, $aes_key, $aes_iv);
            if ($decrypt_data != "") {
                $response = json_decode($decrypt_data);
                if (isset($response->data->data->otp_sent) && $response->data->data->otp_sent === true) {
                    return response()->json(['status' => 'TXNOTP', 'message' => "Aadhar verify successfully", "client_id" => $response->data->transaction_id]);
                } else {
                    return response()->json(['status' => 'ERR', 'message' => isset($response->message) ? $response->message : "Please contact your administrator"]);
                }
            } else {
                return response()->json(['status' => 'ERR', 'message' => "Please contact your administrator"]);
            }
        } else {
            $response = json_decode($aadharRecord->response);
            return response()->json([
                'status'  => 'TXN',
                'message' => "Aadhar re-verified successfully",
                "profile" => "data:image/png;base64, " . $response->profile_image,
                "mobile"  => $aadharRecord->mobile,
                'state'   => $response->address->state,
                'pincode' => $response->zip,
                'city'    => $response->address->po,
                'address' => $response->address->house . " " . $response->address->street . " " . $response->address->loc
            ]);
        }
    }

    public function checkaadharotp(Request $post)
    {
        $rules = array(
            'otp'       => 'required',
            'client_id' => "required",
            'mobile'    => "required"
        );
        $validate = \Myhelper::FormValidator($rules, $post);
        if ($validate != "no") {
            return $validate;
        }
        $aes_key = "3c8cdd3e3028795dacf67ef25a89509a989768b067a7b591cc468954ad4e1620";
        $aes_iv = "ec5bad40b2162069";
        $user_data = array(
            'p1' => "Advance",
            "p2" => $post->otp,
            "p3" => $post->client_id
        );
        $encrypt_data = \Myhelper::newEncrypt(json_encode($user_data), $aes_key, $aes_iv);
        $url = "http://192.168.0.181:8000/api/v1/validate/otp-submit";
        $header = array(
            'Accept: application/json',
            'Content-Type: application/json',
            'client_id: 98dfe4dbc68bb6948a85137927f857e0',
            'x-api-key: 596e6fc87495e86afb31437b866cce1e00a1248169a90f0fa8eefc230a0b7af4',
        );
        $parameter['body'] = $encrypt_data;
        $result = \Myhelper::curl($url, "POST", json_encode($parameter), $header, "yes", "report", $post->mobile);
        $dec_res = json_decode($result['response']);
        $decrypt_data = \Myhelper::newDecrypt($dec_res->body, $aes_key, $aes_iv);
        if ($decrypt_data != "") {
            $response = json_decode($decrypt_data);
            if (isset($response->status) && $response->status === true) {
                \DB::table("kycdatas")->insert([
                    "type"   => "aadhar",
                    "name"   => $response->data->data->full_name,
                    "number" => $response->data->data->aadhaar_number,
                    "mobile" => $post->mobile,
                    "state"  => $post->client_id,
                    "response" => json_encode($response->data),
                    'user_id' => \Auth::id()
                ]);
                return response()->json([
                    'status'  => 'TXN',
                    'message' => "Aadhar verified successfully",
                    "profile" => "data:image/png;base64, " . $response->data->data->profile_image,
                    "mobile"  => $post->mobile,
                    'state'   => $response->data->data->address->state,
                    'pincode' => $response->data->data->zip,
                    'city'    => $response->data->data->address->po,
                    'address' => $response->data->data->address->house . " " . $response->data->data->address->street . " " . $response->data->data->address->landmark . " " . $response->data->data->address->loc
                ]);
            } else {
                return response()->json(['status' => 'ERR', 'message' => isset($response->message) ? $response->message : "Please contact your administrator"]);
            }
        } else {
            return response()->json(['status' => 'ERR', 'message' => "Please contact your administrator"]);
        }
    }

    public function update_kyc(Request $request)
    {
        $user = $request->user;
        $user_id = $user->id;
        $user_update = Kycprocess::where('user_id', $user_id)->first();
        if (!$user_update) {
            $user_update = new Kycprocess();
            $user_update->kyc_status = 1;
            $user_update->user_id = $user_id;
        }
        if ($request->aadhar_no) {
            $user_update->aadhar_no = $request->aadhar_no;
        }
        if ($request->aadhar_name) {
            $user_update->aadhar_name = $request->aadhar_name;
        }
        if ($request->aadhar_father_name) {
            $user_update->aadhar_father_name = $request->aadhar_father_name;
        }
        if ($request->aadhar_dob) {
            $user_update->aadhar_dob = $request->aadhar_dob;
        }
        if ($request->aadhar_zipcode) {
            $user_update->aadhar_zipcode = $request->aadhar_zipcode;
        }
        if ($request->aadhar_country) {
            $user_update->aadhar_country = $request->aadhar_country;
        }
        if ($request->aadhar_state) {
            $user_update->aadhar_state = $request->aadhar_state;
        }
        if ($request->aadhar_city) {
            $user_update->aadhar_city = $request->aadhar_city;
        }
        if ($request->aadhar_address) {
            $user_update->aadhar_address = $request->aadhar_address;
        }
        if ($request->aadhar_profile_photo) {
            $user_update->aadhar_profile_photo = $request->aadhar_profile_photo;
        }
        if ($request->aadhar_mobile_no) {
            $user_update->aadhar_mobile_no = $request->aadhar_mobile_no;
        }
        if ($request->is_aadhar_verified) {
            $user_update->is_aadhar_verified = $request->is_aadhar_verified;
        }
        if ($request->pan_no) {
            $user_update->pan_no = $request->pan_no;
        }
        if ($request->pan_name) {
            $user_update->pan_name = $request->pan_name;
        }
        if ($request->is_pan_verified) {
            $user_update->is_pan_verified = $request->is_pan_verified;
        }
        if ($request->ifsc_code) {
            $user_update->ifsc_code = $request->ifsc_code;
        }
        if ($request->account_no) {
            $user_update->account_no = $request->account_no;
        }
        if ($request->bank_name) {
            $user_update->bank_name = $request->bank_name;
        }
        if ($request->account_holder_name) {
            $user_update->account_holder_name = $request->account_holder_name;
        }
        if ($request->is_bank_verified) {
            $user_update->is_bank_verified = $request->is_bank_verified;
        }
        if ($request->hasFile('live_photo')) {
            $file = $request->file('live_photo');
            $filePath = $file->store('kyc', 'public');
            $user_update->live_photo = $filePath;
        }
        if ($request->hasFile('live_video')) {
            $file = $request->file('live_video');
            $filePath = $file->store('kyc', 'public');
            $user_update->live_video = $filePath;
        }
        $user_update->save();
        return response()->json(['status' => 'OK', 'message' => "KYC updated successfully"]);
    }

    public function get_services()
    {
        $get_service = Service::where('status', 1)->get();
        if ($get_service) {
            return response()->json(['status' => 'Success', 'message' => 'Services fetched successfully', 'data' => $get_service]);
        } else {
            return response()->json(['status' => 'Error', 'message' => 'No services found']);
        }
    }

    public function get_packages()
    {
        $get_package = Package::where('status', 1)->orderBy('id', 'desc')->get();
        $add_package_service = array();
        if (!empty($get_package)) {
            foreach ($get_package as $pack) {
                $pack->service = DB::table('add_package_service as a')->leftJoin('services as b', 'b.id', '=', 'a.service_id')->select('a.package_id', 'a.service_id', 'b.*')->where('a.status', 1)->where('b.status', 1)->where('a.package_id', $pack->id)->get();
                $add_package_service[] = $pack;
            }
        }

        if ($add_package_service) {
            return response()->json(['status' => 'Success', 'message' => 'Packages fetched successfully', 'data' => $add_package_service]);
        } else {
            return response()->json(['status' => 'Error', 'message' => 'No packages found']);
        }
    }

    public function create_pet(Request $request)
    {
        $rules = array(
            'pet_name'       => 'required',
            'pet_image' => "required",
        );
        $validate = \Myhelper::FormValidator($rules, $request);
        if ($validate != "no") {
            return $validate;
        }
        $check_data = $this->check_exist_data($request, null);
        if ($check_data) {
            $message = '';
            if ($check_data->title == $request->pet_name) {
                $message .= "Pet Category ";
            }
            if ($message) {
                return response()->json(['status' => 'Error', 'message' => $message . 'already exists.']);
            }
        }
        $pet = new PetCategory();
        if ($request->pet_name) {
            $pet->title = $request->pet_name;
        }
        $pet->user_id = $request->user->id;
        if ($request->hasFile('pet_image')) {
            $file = $request->file('pet_image');
            $filePath = $file->store('pet_category', 'public');
            $pet->image = $filePath;
        }
        if ($request->pet_size) {
            $pet->pet_size = $request->pet_size;
        }
        if ($request->pet_bred) {
            $pet->pet_bred = $request->pet_bred;
        }
        $pet->save();
        return response()->json(['status' => 'OK', 'message' => "Pet Add Successfully"]);
    }

    public function list_pet(Request $request)
    {
        $get_pet = PetCategory::where('user_id', $request->user->id)->where('status', 1)->get();
        if ($get_pet) {
            return response()->json(['status' => 'Success', 'message' => 'Pet List Successfully', 'data' => $get_pet]);
        }
    }

    public function update_pet(Request $request, $id)
    {
        if (!$id) {
            return response()->json(['status' => 'Error', 'message' => 'Pet ID is required']);
        }
        if ($request->method() == "GET") {
            if (!empty($id)) {
                $get_single_pet = PetCategory::where('id', $id)->where('status', 1)->get();
                if ($get_single_pet) {
                    return response()->json(['status' => 'Success', 'message' => 'Single Pet Fetch Successfully', 'data' => $get_single_pet]);
                }
            }
        }

        if ($request->method() == "POST") {
            $rules = array(
                'pet_name'       => 'required',
            );
            $validate = \Myhelper::FormValidator($rules, $request);
            if ($validate != "no") {
                return $validate;
            }
            $check_data = $this->check_exist_data($request, $id);
            if ($check_data) {
                $message = '';
                if ($check_data->title == $request->pet_name) {
                    $message .= "Pet Category ";
                }
                if ($message) {
                    return response()->json(['status' => 'ERR', 'message' => "Pet Category Already Exists"]);
                }
            }
            $pet = PetCategory::findOrfail($id);

            if ($request->pet_name) {
                $pet->title = $request->pet_name;
            }
            $pet->user_id = $request->user->id;
            if ($request->hasFile('pet_image')) {
                $file = $request->file('pet_image');
                $filePath = $file->store('pet_category', 'public');
                $pet->image = $filePath;
            }
            if ($request->pet_size) {
                $pet->pet_size = $request->pet_size;
            }
            if ($request->pet_bred) {
                $pet->pet_bred = $request->pet_bred;
            }
            $pet->save();
            return response()->json(['status' => 'OK', 'message' => "Pet Update Successfully"]);
        }
    }

    public function create_booking(Request $request)
    {
        $rules = array(
            'pet_id'       => 'required',
            'booking_date'       => 'required',
            'booking_time'       => 'required',
        );
        $validate = \Myhelper::FormValidator($rules, $request);
        if ($validate != "no") {
            return $validate;
        }
        $pet_id = $request->pet_id;
        $booking_date = $request->booking_date;
        $booking_time = $request->booking_time;
        $description  = $request->description;
        $insert_booking = DB::table('tbl_pet_bookings')->insert([
            'pet_id' => $pet_id,
            'booking_date' => $booking_date,
            'booking_time' => $booking_time,
            'description' => $description,
            'customer_id' => $request->user->id
        ]);
        if ($insert_booking) {
            return response()->json(['status' => 'OK', 'message' => 'Booking created successfully']);
        } else {
            return response()->json(['status' => 'Error', 'message' => 'Failed to create booking']);
        }
    }

    public function fetch_booking(Request $request)
    {

        $booking = DB::table('pet_category')->where('user_id', $request->user->id)->where('status', 1)->orderBy('id', 'desc')->get();

        $get_array = array();
        if (!empty($booking)) {

            foreach ($booking as $book) {
                $book->get_booking = DB::table('tbl_pet_bookings as a')->join('users as b', 'a.customer_id', '=', 'b.id')->select('b.name as user_name', 'a.*')->where('a.status', 1)->where('b.status', 1)->orderBy('id', 'desc')->get();
                $get_array[] = $book;
            }

            return response()->json(['status' => 'OK', 'message' => 'Booking fetched successfully', 'data' => $get_array]);
        } else {
            return response()->json(['status' => 'Error', 'message' => 'No booking found']);
        }
    }

    public function accept_booking(Request $request)
    {

        $rules = array(
            'id'       => 'required',
            'booking_status'       => 'required'
        );
        $validate = \Myhelper::FormValidator($rules, $request);
        if ($validate != "no") {
            return $validate;
        }
        $booking_status_update = DB::table('tbl_pet_bookings')
            ->where('id', $request->id)
            ->update(['booking_status' => $request->booking_status]);
        return response()->json(['status' => 'OK', 'message' => 'Booking status updated successfully']);
    }

    public function check_exist_data($request, $id)
    {
        $query = PetCategory::where('status', '!=', 3);
        if ($id !== null) {
            $query->where('id', '!=', $id);
        }
        $check_pet_category = $query->where(function ($q) use ($request) {
            $q->where('title', $request->pet_name);
        })->first();

        return $check_pet_category;
    }

    public function delete_pet(Request $request)
    {
        $update_pet_status = PetCategory::where('id', $request->id)->update(['status' => 3]);
        if ($update_pet_status) {
            return response()->json(['message' => 'Pet deleted successfully.'], 200);
        }
    }

    public function fetch_company_info()
    {
        $company_info = CmsModal::where('status', 1)->first();
        if ($company_info) {
            return response()->json(['status' => 'OK', 'message' => 'Company Info fetched successfully', 'data' => $company_info], 200);
        } else {
            return response()->json(['status' => 'Error', 'message' => 'Company Info not found']);
        }
    }

    public function fetch_category()
    {
        $get_category = CategoriesModal::where('status', 1)->get();
        if ($get_category) {
            return response()->json(['status' => 'OK', 'message' => 'Category fetched successfully', 'data' => $get_category], 200);
        } else {
            return response()->json(['status' => 'Error', 'message' => 'Company Info not found']);
        }
    }

    public function fetch_property(Request $request)
    {

        if(isset($request->user->id) && $request->user->id){
            $user_id = $request->user->id;
        }else{
           $user_id = "";
        }
        if (!isset($request->type)) {
            return response()->json(['status' => 'Error', 'message' => 'Type is required'], 400);
        }
        $type = $request->type;
        $get_category = CategoriesModal::where('status',1)
            ->when($type != "all", function ($query) use ($type) {
                $query->where('id', $type);
            });
        $get_cate = $get_category->orderBy('id','asc')->get();
        $new_property_get = array();
        foreach($get_cate as $row){
            if(!empty($user_id)){
            $get_property = DB::table('properties as p')->leftJoin('categories as pg','p.category_id','=','pg.id')->leftJoin('whislist_property as c','p.id','=','c.property_id')->select('p.*','pg.title as category_name','c.status as whislist_status')->where('p.status',1)->where('pg.status',1)->where('p.category_id',$row->id)->where('p.is_property_verified',1)->get();
            }else{
            $get_property = DB::table('properties as p')->leftJoin('categories as pg','p.category_id','=','pg.id')->select('p.*','pg.title as category_name')->where('p.status',1)->where('pg.status',1)->where('p.category_id',$row->id)->where('p.is_property_verified',1)->get();
            }
            $get_fac = array();
            foreach($get_property as $property){
                $get_faciflties = DB::table('add_facilities_propery as a')->leftJoin('facilities as b','a.facilities_id','=','b.id')->select('a.facilities_id','b.title as facility_name','a.value as facility_value','b.image as facility_image')->where('a.status',1)->where('b.status',1)->where('a.property_id',$property->id)->get();
                $get_amentities = DB::table('add_amenties as a')->leftJoin('amenities as b','a.amenities_id','=','b.id')->select('a.amenities_id','b.title as amenities_name','b.image as amenities_image')->where('a.status',1)->where('b.status',1)->where('a.property_id',$property->id)->get();
                $get_sub_img = DB::table('properties_images')->where('property_id',$property->id)->where('status',1)->get();
                $property->facilities = $get_faciflties;
                $property->amenities = $get_amentities;
                $property->sub_img =  $get_sub_img;
                $get_fac[] = $property;
            }

            $row->property = $get_property;
            $new_property_get[] = $row;
        }
        return response()->json(['status' => 'Success', 'data' => $new_property_get], 200);
    }


    public function fetch_testimonial()
    {
        $get_testimonial = Testimonal::where('status', 1)->get();
        if ($get_testimonial) {
            return response()->json(['status' => 'OK', 'message' => 'Testimonial fetched successfully', 'data' => $get_testimonial], 200);
        } else {
            return response()->json(['status' => 'Error', 'message' => 'Testimonial not found']);
        }
    }

    public function fetch_blog(Request $request)
    {
        $get_blog = Blog::where('status', 1);
        if ($request->id) {
            $get_blog->where('id', $request->id);
        }
        $get_blog = $get_blog->get();
        if ($get_blog) {
            return response()->json(['status' => 'OK', 'message' => 'Blog fetched successfully', 'data' => $get_blog], 200);
        } else {
            return response()->json(['status' => 'Error', 'message' => 'Blog not found']);
        }
    }

    public function fetch_banner(Request $request)
    {

        $get_banner = Banner::where('status', 1)->where('type', $request->type)->get();
        if ($get_banner) {
            return response()->json(['status' => 'OK', 'message' => 'Banner fetched successfully', 'data' => $get_banner], 200);
        } else {
            return response()->json(['status' => 'Error', 'message' => 'Banner not found']);
        }
    }

    public function fetch_seo(Request $request){
        $get_seo = Seo::where('status', 1)->where('url', $request->url)->first();
        if ($get_seo) {
            return response()->json(['status' => 'OK', 'message' => 'SEO fetched successfully', 'data' => $get_seo], 200);
        } else {
            return response()->json(['status' => 'Error', 'message' => 'SEO not found']);
        }
    }

    public function fetch_gallary(Request $request){
        $get_gallary = Gallary::where('status', 1)->get();
        if ($get_gallary) {
            return response()->json(['status' => 'OK', 'message' => 'Gallery fetched successfully', 'data' => $get_gallary], 200);
        } else {
            return response()->json(['status' => 'Error', 'message' => 'Gallery not found']);
        }
    }

    public function fetch_pages(Request $request){

        $get_page = Page::where('page_name', $request->page_name)->first();
        if ($get_page) {
            return response()->json(['status' => 'OK', 'message' => 'Page fetched successfully', 'data' => $get_page], 200);
        } else {
            return response()->json(['status' => 'Error', 'message' => 'Page not found']);
        }
    }

    public function send_enquiry(Request $request)
    {
        $company_info = CmsModal::where('status', 1)->first();
        if ($request->name == '') {
            return response()->json(['status' => 'Error', 'message' => 'Name is required'], 400);
        }

        if ($request->email == '' || !filter_var($request->email, FILTER_VALIDATE_EMAIL)) {
            return response()->json(['status' => 'Error', 'message' => 'A valid email is required'], 400);
        }

        if ($request->mobile_no == '' || !preg_match('/^\d{10}$/', $request->mobile_no)) {
            return response()->json(['status' => 'Error', 'message' => 'Mobile number must be a 10-digit integer'], 400);
        }

        Mail::to($company_info->email)->send(new Enquirys($request));
        $enc = new Enquiry();
        $enc->name = $request->name;
        $enc->email = $request->email;
        $enc->mobile_no = $request->mobile_no;
        $enc->message = $request->message;
        if($request->property_id){
        $enc->property_id = $request->property_id;
        }
        if($request->location){
        $enc->location = $request->location;
        }
        if($request->budget){
        $enc->budget = $request->budget;
        }
        if($request->plan_date){
        $enc->plan_date = $request->plan_date;
        }
        $enc->save();
        DB::table('notes')->insert(['loan_request_id' => $enc->id, 'user_id' => 1, 'loan_status' => 1, 'title' => "Initial Stage"]);
        return response()->json(['status' => 'OK', 'message' => 'Enquiry sent successfully'], 200);
    }

    public function post_review(Request $request){
        $user_id = $request->user->id;
        $review = new PropertyReview();
        $review->user_id = $user_id;
        $review->review = $request->review;
        $review->rating = $request->rating;
        $review->save();
        return response()->json(['status' => 'OK','message' => 'Review posted successfully'], 200);
    }

    public function fetch_review(){
        $reviews = DB::table('property_reviews as a')->join('users as b','a.user_id','=','b.id')->select('a.*','b.name as user_name','b.image as user_image')->where('a.status',1)->where('b.status',1)->get();
        if($reviews){
            return response()->json(['status' => 'OK', 'data' => $reviews], 200);
        }else{
            return response()->json(['status' => 'Error','message' => 'No reviews found'], 404);
        }
    }


    public function property_whislist(Request $request){

        $check_whislist = DB::table('whislist_property')->where('user_id', $request->user->id)->where('property_id', $request->property_id)->first();
        $add_whislist = DB::table('whislist_property')->insert(['user_id'=>$request->user->id,'property_id'=> $request->property_id]);
        if($check_whislist){
            if($check_whislist->status == 1){
                $update_whislist_status = DB::table('whislist_property')->where('user_id', $request->user->id)->where('property_id', $request->property_id)->update(['status'=>2]);
            }else{
                $update_whislist_status = DB::table('whislist_property')->where('user_id', $request->user->id)->where('property_id', $request->property_id)->update(['status'=>1]);
            }
        }else{
            if($add_whislist){
                return response()->json(['status' => 'OK','message' => 'Property whitelisted successfully'], 200);
            } else{
                return response()->json(['status' => 'Error','message' => 'Failed to whitelist property'], 500);
            }
        }
    }

    public function fetch_single_property(Request $request , $id){
        if(isset($request->user->id) && $request->user->id){
           $user_id = $request->user->id;
       }else{
          $user_id = "";
       }
       if (!isset($request->cat)) {
           return response()->json(['status' => 'Error', 'message' => 'Type is required'], 400);
       }
       $type = $request->cat;
       $get_category = CategoriesModal::where('status',1)
           ->when($type != "all", function ($query) use ($type) {
               $query->where('id', $type);
           });
       $get_cate = $get_category->orderBy('id','asc')->get();
       $new_property_get = array();
       foreach($get_cate as $row){
           if(!empty($user_id)){
           $get_property = DB::table('properties as p')->leftJoin('categories as pg','p.category_id','=','pg.id')->leftJoin('whislist_property as c','p.id','=','c.property_id')->select('p.*','pg.title as category_name','c.status as whislist_status')->where('p.status',1)->where('pg.status',1)->where('p.category_id',$row->id)->where('p.is_property_verified',1)->where('p.id',$id)->get();
           }else{
           $get_property = DB::table('properties as p')->leftJoin('categories as pg','p.category_id','=','pg.id')->select('p.*','pg.title as category_name')->where('p.status',1)->where('pg.status',1)->where('p.category_id',$row->id)->where('p.is_property_verified',1)->where('p.id',$id)->get();
           }
           $get_fac = array();
           foreach($get_property as $property){
            $get_faciflties = DB::table('add_facilities_propery as a')->leftJoin('facilities as b','a.facilities_id','=','b.id')->select('a.facilities_id','b.title as facility_name','a.value as facility_value','b.image as facility_image')->where('a.status',1)->where('b.status',1)->where('a.property_id',$property->id)->get();
            $get_amentities = DB::table('add_amenties as a')->leftJoin('amenities as b','a.amenities_id','=','b.id')->select('a.amenities_id','b.title as amenities_name','b.image as amenities_image')->where('a.status',1)->where('b.status',1)->where('a.property_id',$property->id)->get();
            $get_sub_img = DB::table('properties_images')->where('property_id',$property->id)->where('status',1)->get();
            $reviews = DB::table('property_reviews as a')
            ->join('users as b', 'a.user_id', '=', 'b.id')
            ->leftJoin('properties as c', 'c.id', '=', 'a.property_id') // Added left join
            ->select(
                'a.*',
                'b.name as user_name',
                'b.image as user_image'
            )
            ->where('a.status', 1)
            ->where('b.status', 1)
            ->where('c.status', 1)
            ->where('a.property_id', $property->id)
            ->get();
            $property->facilities = $get_faciflties;
            $property->amenities = $get_amentities;
            $property->sub_img =  $get_sub_img;
            $property->review =  $reviews;
            $get_fac[] = $property;
           }

           $row->property = $get_property;
           $new_property_get[] = $row;
       }
       return response()->json(['status' => 'Success', 'data' => $new_property_get], 200);
   }

   public function permission(Request $request){
        $role_id = $request->user->role_id;
        $permission_name = $request->title;
         try {
        // Fetch the permission data from the database
        $get_permission = DB::table('role_permission as a')
            ->join('permissions as b', 'a.permission_id', '=', 'b.id')
            ->join('permission_category as c', 'b.per_cate_id', '=', 'c.id')
            ->select('a.*', 'b.title', 'c.category_name')
            ->where('a.status', 1)
            ->where('b.status', 1)
            ->where('c.status', 1)
            ->where('a.role_id', $role_id)
            ->where('b.title', $permission_name)
            ->first();

        // Check if permission data exists and if the permission_status is 1
        if ($get_permission && $get_permission->permission_status == 1) {
            return response()->json([
                'status' => 'success',
                'message' => 'Permission granted',
                'permission_status' => 1
            ], 200);
        }

        return response()->json([
            'status' => 'error',
            'message' => 'Permission denied',
            'permission_status' => 2
        ], 200);

    } catch (\Exception $e) {
        // Handle errors and return a proper response
        return response()->json([
            'status' => 'error',
            'message' => 'Something went wrong: ' . $e->getMessage()
        ], 500);
    }
   }

   public function update_profile(Request $request){

    $user_id = $request->user->id;
    $user = User::findOrFail($request->user->id);
    if($request->name){
        $user->name = $request->name;
    }
    if($request->email){
        $user->email = $request->email;
    }
    if($request->mobile_no){
        $user->mobile_no = $request->mobile_no;
    }
    if($request->vehicle_type){
        $user->vehicle_type = $request->vehicle_type;
    }
    if($request->vehicle_number){
        $user->vehicle_number = $request->vehicle_number;
    }
    if($request->lat){
        $user->lat = $request->lat;
    }
    if($request->long){
        $user->long = $request->long;
    }
    // if(!empty($request->lat) && !empty($request->long) ){
    //     $apiKey = '9d52cf15543e4b1d9517f51ba60e6961';
    //     $url = "https://api.opencagedata.com/geocode/v1/json?q={$request->lat}+{$request->long}&key={$apiKey}";
    //     $response = file_get_contents($url);
    //     $responseData = json_decode($response, true);
    //     if (!empty($responseData['results'])) {
    //         foreach ($responseData['results'][0]['components'] as $key => $value) {
    //             if ($key === 'postcode') {
    //               $user->pincode = $value;
    //             }
    //         }
    //     }
    // }
    if (!empty($request->lat) && !empty($request->long)) {
        $apiKey = '9d52cf15543e4b1d9517f51ba60e6961';
        $url = "https://api.opencagedata.com/geocode/v1/json?q={$request->lat}+{$request->long}&key={$apiKey}";


        // Fetch API response
        $response = file_get_contents($url);
        $responseData = json_decode($response, true);

        if (!empty($responseData['results'])) {
        $addressComponents = $responseData['results'][0]['components'];
        }
        // Save pincode
        if (isset($addressComponents['postcode'])) {
        $user->pincode = $addressComponents['postcode'];
        }

        // Save formatted address
        if (isset($responseData['results'][0]['formatted'])) {
        $user->address = $responseData['results'][0]['formatted'];
        }

        // Save other components if needed
        $user->city = $addressComponents['city'] ?? null;
        $user->state = $addressComponents['state'] ?? null;
        $user->country = $addressComponents['country'] ?? null;
        }
        if($request->gst_no){
            $user->gst_no = $request->gst_no;
        }

    $user->save();
    return response()->json(['status' => 'OK','message' => 'Profile updated successfully'], 200);

   }

   public function booking(Request $request){

    $validated = $request->validate([
        'booking_date' => 'required',
        'booking_time' => 'required'
    ]);
    $user_id = $request->user->id;
    $get_user1 = User::find($user_id);
    $get_user = DB::table('vehicles')->where('user_id',$request->user->id)->where('is_vehicle_default',1)->first();
    if(!$get_user){
        return response()->json(['status' => 'error','message' => 'Please Add Vehicle'], 400);
    }
    $get_active_bank = DB::table('banks')->where('is_bank_active',1)->first();
    if(!$get_active_bank){
        return response()->json(['status' => 'error','message' => 'Add Active Bank'], 400);
    }
    $check_service = Pincode::where('pin_code',$get_user1->pincode)->where('status',1)->first();
    if(!$check_service){
        return response()->json(['status' => 'error','message' => 'Service not available in your location'], 400);
    }else{
        $booking = new Booking();
        $booking->user_id = $user_id;
        $booking->booking_date = $request->booking_date;
        $booking->booking_time = $request->booking_time;
        $booking->description = $request->description;
        $booking->vehicle_type =   $get_user->vehicle_type;
        $booking->vehicle_number =   $get_user->vehicle_number;
        $booking->soc =   $request->soc;
        $booking->pincode =   $get_user1->pincode;
        $booking->country =   $get_user1->country;
        $booking->state =   $get_user1->state;
        $booking->city =   $get_user1->city;
        $booking->address =   $get_user1->address;
        $booking->name =   $get_user1->name;
        $booking->email =   $get_user1->email;
        $booking->mobile_no =   $get_user1->mobile_no;
        if($request->booking_type)
        {
            $booking->booking_type = $request->booking_type;
        }
        $booking->save();
        DB::table('tbl_transaction')->insert([
            'user_id' => $request->user->id,
            'booking_id'  => $booking->id,
            'active_bank_id' => $get_active_bank->id
        ]);
        return response()->json(['status' => 'OK','message' => 'Booking request sent successfully'], 200);
    }
   }

   public function booking_list(Request $request){
       $user_id = $request->user->id;
       $get_book_session = DB::table('bookings as a')
        ->leftJoin('users as b', 'a.user_id', '=', 'b.id')
        ->select(
            'a.*',
            'b.name as user_name',
            'b.email as user_email',
            'b.mobile_no as user_mobile'
        )
        ->where('a.status', 1)
        ->where('b.status', 1)
        ->where('a.user_id',$user_id)->orderBy('a.id','desc')
        ->get();
        if ($get_book_session) {
            return response()->json([
                'status' => 'OK',
                'message' => 'Book Session Fetched Successfully',
                'data' => $get_book_session
            ],200);
        }else{
            return response()->json([
                'status' => 'error',
                'meesage'=> 'data not found'
                ]);
        }

   }

   public function get_booking(Request $request, $id){

        $get_booking = DB::table('bookings')->where('id',$id)->first();
         if ($get_booking) {
            return response()->json([
                'status' => 'OK',
                'message' => 'Get Book Session Fetched Successfully',
                'data' => $get_booking
            ],200);
        }else{
            return response()->json([
                'status' => 'error',
                'meesage'=> 'data not found'
                ]);
        }

   }

   public function booking_update(Request $request){

        //  $validated = $request->validate([
        //         'booking_date' => 'required',
        //         'booking_time' => 'required'
        //     ]);
        $user_id = $request->user->id;
        $booking = Booking::find($request->hidden_id);
        if($request->booking_date && $request->booking_time ){
        $booking->booking_date = $request->booking_date;
        $booking->booking_time = $request->booking_time;
        }
        if($request->booking_status){
            $booking->booking_status = $request->booking_status;
        }
        if($request->description){
        $booking->description = $request->description;
        }
        $booking->save();
        return response()->json(['status' => 'OK','message' => 'Booking Schedule update successfully'], 200);

   }



   public function uploadProfilePicture(Request $request)
    {
         $user_id = $request->user->id;
        // Validate the uploaded file
        $request->validate([
            'profile_picture' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // 2MB Max
        ]);

        // Store the file
        if ($request->hasFile('profile_picture')) {
            $file = $request->file('profile_picture');
            $filename = uniqid() . '.' . $file->getClientOriginalExtension();
            $path = $file->storeAs('profile-pictures', $filename, 'public');
            DB::table('users')->where('id',$user_id)->update(['image'=>$path] );
            // Respond with the file path
            return response()->json([
                'success' => true,
                'message' => 'Profile picture uploaded successfully!',
                'file_path' => Storage::url($path)
            ]);
        }

        return response()->json([
            'success' => false,
            'message' => 'Failed to upload profile picture.'
        ], 500);
    }

     public function get_user(Request $request){

        $user_id = $request->user->id;
        $get_user = User::find($user_id);
        return response()->json(['status' => 'OK','message' => 'User details','data' => $get_user], 200);
    }

    public function get_transaction(Request $request){

        $get_transaction = DB::table('tbl_transaction')->where('user_id',$request->user->id)->orderBy('id','desc')->get();
        $new_arr = array();
        foreach($get_transaction as $row){
            $get_user_info = User::where('status',1)->where('id',$row->user_id)->first();
            $get_booking_info = Booking::where('status',1)->where('id',$row->booking_id)->first();
            $get_bank_info = DB::table('banks')->where('status',1)->where('id',$row->active_bank_id)->first();
            $row->get_user_info = $get_user_info;
            $row->get_booking_info =  $get_booking_info;
            $row->get_bank_info =  $get_bank_info;
            $new_arr[] = $row;
        }
        if ($new_arr) {
            return response()->json([
                'status' => 'OK',
                'message' => 'Get Transaction Info',
                'data' => $new_arr
            ],200);
        }else{
            return response()->json([
                'status' => 'error',
                'meesage'=> 'data not found'
                ]);
        }

    }

    public function genrate_invoice(Request $request , $id){
        $query = DB::table('tbl_transaction');
        if (isset($request->type)) {
            $query->where('user_id', $request->type);
        }
        if ($id) {
            $query->where('id', $id);
        }
        $get_transaction = $query->orderBy('id', 'desc')->get();
        $alltransaction = array();
        foreach ($get_transaction as $row) {
            $get_user_info = User::where('status', 1)->where('id', $row->user_id)->first();
            $get_booking_info = Booking::where('status', 1)->where('id', $row->booking_id)->first();
            $get_bank_info = DB::table('banks')->where('status', 1)->where('id', $row->active_bank_id)->first();
            $row->get_user_info = $get_user_info;
            $row->get_booking_info =  $get_booking_info;
            $row->get_bank_info =  $get_bank_info;
            $alltransaction[] = $row;
        }
        $company_info = DB::table('cms_settings')->where('status', 1)->where('id', 1)->first();
        $data = array('company_info' => $company_info, 'invoice' => $alltransaction);
        $pdf = PDF::loadView('company.invoice', $data);
        // return $pdf->download('invoice.pdf');
        return $pdf->stream('invoice.pdf');
    }

}
