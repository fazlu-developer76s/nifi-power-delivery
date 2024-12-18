<?php

namespace App\Http\Controllers;

use App\Models\CategoriesModal;
use App\Models\Facilities;
use Illuminate\Http\Request;
use App\Models\Property;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Helpers\Global_helper as Helper;
use App\Models\Amenities;
use App\Models\Bedtype;

class PropertyController extends Controller
{
    public function index()
    {
        $title = "Property List";
        $get_property = DB::table('properties as a')->join('categories as b', 'a.category_id', '=', 'b.id')->select('a.*', 'b.title as category_name')->where('a.status', '!=', '3')->where('b.status', 1)->where('a.is_property_verified','1')->orderBy('a.id', 'desc')->get();
        $properties = array();
        foreach ($get_property as $property) {
            $property->images = DB::table('properties_images')->where('property_id', $property->id)->where('status', 1)->get();
            $property->facilities = DB::table('add_facilities_propery as a')->join('facilities as b', 'a.facilities_id', '=', 'b.id')->select('a.*', 'b.title as facility_name')
                ->where('a.status', '1')->where('a.property_id', $property->id)->where('b.status', 1)->get();
            $properties[] = $property;
        }
        $allproperty = $properties;
        return view('property.index', compact('title', 'allproperty'));
    }

    public function pending_index(){

        $title = "Property List";
        $get_property = DB::table('properties as a')->join('categories as b', 'a.category_id', '=', 'b.id')->select('a.*', 'b.title as category_name')->where('a.status', '!=', '3')->where('b.status', 1)->where('a.is_property_verified','2')->orderBy('a.id', 'desc')->get();
        $properties = array();
        $is_property = 1;
        foreach ($get_property as $property) {
            $property->images = DB::table('properties_images')->where('property_id', $property->id)->where('status', 1)->get();
            $property->facilities = DB::table('add_facilities_propery as a')->join('facilities as b', 'a.facilities_id', '=', 'b.id')->select('a.*', 'b.title as facility_name')
                ->where('a.status', '1')->where('a.property_id', $property->id)->where('b.status', 1)->get();
            $properties[] = $property;
        }
        $allproperty = $properties;
        return view('property.index', compact('title', 'allproperty','is_property'));
    }

    public function create(Request $request)
    {
        if ($request->method() == 'POST') {
            $validatedData = $request->validate([
                'category_id' => 'required',
                'hotel_name' => 'required|string|max:255',
                'hotel_address' => 'nullable|string',
                'hotel_description' => 'nullable|string',
                'hotel_map_link' => 'nullable|string',
                'youtube_link' => 'nullable|string',
                'rating' => 'nullable|string',
                'state' => 'required|string',
                'price' => 'required|string',
                'booking_days' => 'nullable|string',
                'distance' => 'nullable|string',
                'location' => 'nullable|string',
                'hotel_images.*' => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048',
            ]);
            // $checkData = Property::where('hotel_name', $request->hotel_name)->first();
            // if ($checkData) {
            //     return redirect()->route('property.create')->with('error', 'Property with this name already exists.');
            // }
            $hotel = new Property();
            $hotel->user_id = Auth::user()->id;
            $hotel->category_id = $request->category_id;
            $hotel->hotel_name = $request->hotel_name;
            $hotel->hotel_address = $request->hotel_address;
            $hotel->hotel_description = $request->hotel_description;
            $hotel->hotel_map_link = $request->hotel_map_link;
            $hotel->youtube_link = $request->youtube_link;
            $hotel->rating = $request->rating;
            $hotel->state = $request->state;
            $hotel->price = $request->price;
            $hotel->booking_days = $request->booking_days;
            $hotel->distance = $request->distance;
            $hotel->location = $request->location;
            if (Auth::user()->role_id == 1) {
                $hotel->is_property_verified = 1;
            } else {
                $hotel->is_property_verified = 2;
            }
            if ($request->hasFile('hotel_images')) {
                $images = [];
                foreach ($request->file('hotel_images') as $image) {
                    $filePath = $image->store('hotel_images', 'public');
                    $images[] = $filePath;
                }
                // $hotel->hotel_images = json_encode($images);
            } else {
                $images = array();
            }
            $hotel->save();
            $hotel->hotel_url = str_replace(' ', '-', strtolower($hotel->hotel_name)) . $hotel->id;
            $hotel->save();
            foreach ($images as $image) {
                DB::table('properties_images')->insert(['property_id' => $hotel->id,  'image' => $image]);
            }

            $n = 0;
            foreach ($request->facilities as $key => $value) {

                if (!empty($value)) {
                    $facilityId = $request->facilities[$n] ?? null;
                    if ($facilityId) {
                        DB::table('add_facilities_propery')->insert([
                            'property_id' => $hotel->id,
                            'facilities_id' => $value,
                            'value' => $request->number[$key],
                            'created_at' => now(),
                            'updated_at' => now(),
                        ]);
                    }
                }
                $n++;
            }
            if ($request->amenities) {
                foreach ($request->amenities as $amenity) {
                    DB::table('add_amenties')->insert(['property_id' => $hotel->id,  'amenities_id' => $amenity]);
                }
            }
            return redirect()->route('property')->with('success', 'Property Added Successfully');
        }
        $title = "Create Property";
        $get_category = CategoriesModal::where('status', 1)->get();
        $get_facilities = Facilities::where('status', 1)->get();
        $get_amenities = Amenities::where('status', 1)->get();
        return view('property.create', compact('title', 'get_category', 'get_facilities', 'get_amenities'));
    }
    public function edit($id)
    {
        if (!$id) {
            return redirect()->route('property');
        }
        $title = "Edit Property";
        $prop = DB::table('properties as a')->join('categories as b', 'a.category_id', '=', 'b.id')->select('a.*', 'b.title as category_name')->where('a.status', '!=', '3')->where('b.status', 1)->where('a.id', $id)->get();
        $properties = array();
        foreach ($prop as $property) {
            $property->images = DB::table('properties_images')->where('property_id', $property->id)->where('status', 1)->get();
            $property->facilities = DB::table('add_facilities_propery as a')->join('facilities as b', 'a.facilities_id', '=', 'b.id')->select('a.*', 'b.title as facility_name')
                ->where('a.status', '1')->where('a.property_id', $property->id)->where('b.status', 1)->get();
            $properties[] = $property;
        }
        $hotel = $properties[0];
        $get_category = CategoriesModal::where('status', 1)->get();
        $get_facilities = array();
        $facilitiestable = Facilities::where('status', 1)->get();
        foreach ($facilitiestable as $facility) {
            $get_fac_data = DB::table('add_facilities_propery')->where('property_id', $id)->where('facilities_id', $facility->id)->first();
            if ($get_fac_data) {
                $facility->selected = 1;
                $facility->value = $get_fac_data->value;
            } else {
                $facility->selected = 0;
                $facility->value = 0;
            }
            $get_facilities[] = $facility;
        }
        $get_amenities = array();
        $amenttable = Amenities::where('status', 1)->get();
        foreach ($amenttable as $ament) {
            $get_fac_data = DB::table('add_amenties')->where('property_id', $id)->where('amenities_id', $ament->id)->first();
            if ($get_fac_data) {
                $ament->selected = 1;
            } else {
                $ament->selected = 0;
            }
            $get_amenities[] = $ament;
        }
        return view('property.create', compact('title', 'hotel', 'get_category', 'get_facilities', 'get_amenities'));
    }
    public function update(Request $request)
    {
        if ($request->method() == 'POST') {
            $validatedData = $request->validate([
                'category_id' => 'required',
                'hotel_name' => 'required|string|max:255',
                'hotel_address' => 'nullable|string',
                'hotel_description' => 'nullable|string',
                'hotel_map_link' => 'nullable|string',
                'youtube_link' => 'nullable|string',
                'rating' => 'nullable|string',
                'state' => 'required|string',
                'price' => 'required|string',
                'booking_days' => 'nullable|string',
                'distance' => 'nullable|string',
                'location' => 'nullable|string',
                'hotel_images.*' => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048',
            ]);
            // $checkData = Property::where('hotel_name', $request->hotel_name)->first();
            // if ($checkData) {
            //     return redirect()->route('property.create')->with('error', 'Property with this name already exists.');
            // }
            $hotel =  Property::findOrFail($request->hidden_id);
            $hotel->user_id = Auth::user()->id;
            $hotel->category_id = $request->category_id;
            $hotel->hotel_name = $request->hotel_name;
            $hotel->hotel_address = $request->hotel_address;
            $hotel->hotel_description = $request->hotel_description;
            $hotel->hotel_map_link = $request->hotel_map_link;
            $hotel->youtube_link = $request->youtube_link;
            $hotel->rating = $request->rating;
            $hotel->state = $request->state;
            $hotel->price = $request->price;
            $hotel->booking_days = $request->booking_days;
            $hotel->distance = $request->distance;
            $hotel->location = $request->location;
            if ($request->hasFile('hotel_images')) {
                $images = [];
                foreach ($request->file('hotel_images') as $image) {
                    $filePath = $image->store('hotel_images', 'public');
                    $images[] = $filePath;
                }
                // $hotel->hotel_images = json_encode($images);
            } else {
                $images = array();
            }
            $hotel->save();
            $hotel->hotel_url = str_replace(' ', '-', strtolower($hotel->hotel_name)) . $hotel->id;
            $hotel->save();
            foreach ($images as $image) {
                DB::table('properties_images')->insert(['property_id' => $hotel->id,  'image' => $image]);
            }
            $delete_all_facilities = DB::table('add_facilities_propery')->where('property_id', $hotel->id)->delete();
            $n = 0;
            foreach ($request->facilities as $key => $value) {

                if (!empty($value)) {
                    $facilityId = $request->facilities[$n] ?? null;
                    if ($facilityId) {
                        DB::table('add_facilities_propery')->insert([
                            'property_id' => $hotel->id,
                            'facilities_id' => $value,
                            'value' => $request->number[$key],
                            'created_at' => now(),
                            'updated_at' => now(),
                        ]);
                    }
                }
                $n++;
            }
            $delete_all_amenities = DB::table('add_amenties')->where('property_id', $hotel->id)->delete();
            if ($request->amenities) {
                foreach ($request->amenities as $amenity) {
                    DB::table('add_amenties')->insert(['property_id' => $hotel->id,  'amenities_id' => $amenity]);
                }
            }
            return redirect()->route('property')->with('success', 'Property Update Successfully');
        }
    }
    public function destroy($id)
    {
        $property = Property::findOrFail($id);
        $property->status = 3;
        $property->update();
        return redirect()->route('property')->with('success', 'Property deleted successfully.');
    }
    public function check_exist_data($request, $id)
    {
        $query = Property::where('status', '!=', 3);
        if ($id !== null) {
            $query->where('id', '!=', $id);
        }
        $check_property = $query->where(function ($q) use ($request) {
            $q->where('title', $request->title);
        })->first();
        return $check_property;
    }
    public function delete_image(Request $request)
    {
        $image = DB::table('properties_images')->where('id', $request->id)->update(['status' => 3]);
        if ($image) {
            // if ($image->image) {
            //     Storage::disk('public')->delete($image->image);
            // }
            // $image->delete();
            echo 1;
            die;
            return response()->json(['success' => 'Image deleted successfully.']);
        } else {
            return response()->json(['error' => 'Image not found.']);
        }
    }
    public function book_create(Request $request)
    {
        // dd($request);
        if ($request->method() == 'POST') {
            $validatedData = $request->validate([
                'category_id' => 'required',
                'hotel_name' => 'required|string|max:255',
                'hotel_address' => 'nullable|string',
                'hotel_description' => 'nullable|string',
                'hotel_map_link' => 'nullable|string',
                'youtube_link' => 'nullable|string',
                'rating' => 'nullable|string',
                'state' => 'required|string',
                'price' => 'required|string',
                'booking_days' => 'nullable|string',
                'distance' => 'nullable|string',
                'location' => 'nullable|string',
                'hotel_images.*' => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048',
            ]);
            // $checkData = Property::where('hotel_name', $request->hotel_name)->first();
            // if ($checkData) {
            //     return redirect()->route('property.create')->with('error', 'Property with this name already exists.');
            // }
            $hotel = new Property();
            $hotel->user_id = Auth::user()->id;
            $hotel->category_id = $request->category_id;
            $hotel->hotel_name = $request->hotel_name;
            $hotel->hotel_address = $request->hotel_address;
            $hotel->hotel_description = $request->hotel_description;
            $hotel->hotel_map_link = $request->hotel_map_link;
            $hotel->youtube_link = $request->youtube_link;
            $hotel->rating = $request->rating;
            $hotel->state = $request->state;
            $hotel->price = $request->price;
            $hotel->booking_days = $request->booking_days;
            $hotel->distance = $request->distance;
            $hotel->location = $request->location;
            if (Auth::user()->role_id == 1) {
                $hotel->is_property_verified = 1;
            } else {
                $hotel->is_property_verified = 2;
            }
            if ($request->hasFile('hotel_images')) {
                $images = [];
                foreach ($request->file('hotel_images') as $image) {
                    $filePath = $image->store('hotel_images', 'public');
                    $images[] = $filePath;
                }
                // $hotel->hotel_images = json_encode($images);
            } else {
                $images = array();
            }
            $hotel->save();
            $hotel->hotel_url = str_replace(' ', '-', strtolower($hotel->hotel_name)) . $hotel->id;
            $hotel->save();
            foreach ($images as $image) {
                DB::table('properties_images')->insert(['property_id' => $hotel->id,  'image' => $image]);
            }
            return redirect()->route('property')->with('success', 'Property Added Successfully');
        }
        $title = "Create Property";
        $get_category = CategoriesModal::where('status', 1)->get();
        $get_facilities = Facilities::where('status', 1)->get();
        return view('property.book_create', compact('title', 'get_category', 'get_facilities'));
    }
    public function book_edit($id)
    {
        if (!$id) {
            return redirect()->route('property');
        }
        $title = "Edit Property";
        $prop = DB::table('properties as a')->join('categories as b', 'a.category_id', '=', 'b.id')->select('a.*', 'b.title as category_name')->where('a.status', '!=', '3')->where('b.status', 1)->where('a.id', $id)->get();
        $properties = array();
        foreach ($prop as $property) {
            $property->images = DB::table('properties_images')->where('property_id', $property->id)->where('status', 1)->get();
            $property->facilities = DB::table('add_facilities_propery as a')->join('facilities as b', 'a.facilities_id', '=', 'b.id')->select('a.*', 'b.title as facility_name')
                ->where('a.status', '1')->where('a.property_id', $property->id)->where('b.status', 1)->get();
            $properties[] = $property;
        }
        $hotel = $properties[0];
        $get_category = CategoriesModal::where('status', 1)->get();
        $get_facilities = array();
        $facilitiestable = Facilities::where('status', 1)->get();
        foreach ($facilitiestable as $facility) {
            $get_fac_data = DB::table('add_facilities_propery')->where('property_id', $id)->where('facilities_id', $facility->id)->first();
            if ($get_fac_data) {
                $facility->selected = 1;
                $facility->value = $get_fac_data->value;
            } else {
                $facility->selected = 0;
                $facility->value = 0;
            }
            $get_facilities[] = $facility;
        }
        return view('property.book_create', compact('title', 'hotel', 'get_category', 'get_facilities'));
    }
    public function book_update(Request $request)
    {
        if ($request->method() == 'POST') {
            $validatedData = $request->validate([
                'category_id' => 'required',
                'hotel_name' => 'required|string|max:255',
                'hotel_address' => 'nullable|string',
                'hotel_description' => 'nullable|string',
                'hotel_map_link' => 'nullable|string',
                'youtube_link' => 'nullable|string',
                'rating' => 'nullable|string',
                'state' => 'required|string',
                'price' => 'required|string',
                'booking_days' => 'nullable|string',
                'distance' => 'nullable|string',
                'location' => 'nullable|string',
                'hotel_images.*' => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048',
            ]);
            // $checkData = Property::where('hotel_name', $request->hotel_name)->first();
            // if ($checkData) {
            //     return redirect()->route('property.create')->with('error', 'Property with this name already exists.');
            // }
            $hotel =  Property::findOrFail($request->hidden_id);
            $hotel->user_id = Auth::user()->id;
            $hotel->category_id = $request->category_id;
            $hotel->hotel_name = $request->hotel_name;
            $hotel->hotel_address = $request->hotel_address;
            $hotel->hotel_description = $request->hotel_description;
            $hotel->hotel_map_link = $request->hotel_map_link;
            $hotel->youtube_link = $request->youtube_link;
            $hotel->rating = $request->rating;
            $hotel->state = $request->state;
            $hotel->price = $request->price;
            $hotel->booking_days = $request->booking_days;
            $hotel->distance = $request->distance;
            $hotel->location = $request->location;
            if ($request->hasFile('hotel_images')) {
                $images = [];
                foreach ($request->file('hotel_images') as $image) {
                    $filePath = $image->store('hotel_images', 'public');
                    $images[] = $filePath;
                }
                // $hotel->hotel_images = json_encode($images);
            } else {
                $images = array();
            }
            $hotel->save();
            $hotel->hotel_url = str_replace(' ', '-', strtolower($hotel->hotel_name)) . $hotel->id;
            $hotel->save();
            foreach ($images as $image) {
                DB::table('properties_images')->insert(['property_id' => $hotel->id,  'image' => $image]);
            }
            return redirect()->route('property')->with('success', 'Property Update Successfully');
        }
    }

    public function add_room(Request $request, $id)
    {
        if (!$id) {
            return redirect()->route('property');
        }
        if($request->method()=="POST"){
            $validatedData = $request->validate([
                'property_id' => 'required',
                'flor_no' => 'required|string|max:255',
                'room_no' => 'nullable|string',
                'bed_id' => 'nullable|string',
                'status' => 'required'
            ]);
            $insert_book = DB::table('add_book_property')->insertGetId([
                'property_id' => $request->property_id,
                'flor_no' => $request->flor_no,
                'room_no' => $request->room_no,
                'bed_id' => $request->bed_id,
                'status' => $request->status
            ]);
            $n = 0;
            foreach ($request->facilities as $key => $value) {

                if (!empty($value)) {
                    $facilityId = $request->facilities[$n] ?? null;
                    if ($facilityId) {
                        DB::table('add_book_facilities')->insert([
                            'property_id' => $insert_book,
                            'facilities_id' => $value,
                            'value' => $request->number[$key],
                            'created_at' => now(),
                            'updated_at' => now(),
                        ]);
                    }
                }
                $n++;
            }

            if ($request->amenities) {
                foreach ($request->amenities as $amenity) {
                    DB::table('add_book_amenties')->insert(['flor_id' => $insert_book,  'amenities_id' => $amenity]);
                }
            }
            return redirect()->route('book.add.room',['id'=>$request->property_id])->with('success', 'Room Added Successfully');
        }

        $allamenities = array();
        $get_facilities = Facilities::where('status', 1)->get();
        $get_amenities = Amenities::where('status', 1)->get();
        $get_bed = Bedtype::where('status', 1)->get();
        $allflor = DB::table('add_book_property as a')
        ->leftJoin('bedtypes as b', 'a.bed_id', '=', 'b.id')
        ->select('a.*', 'b.title as bed_name')
        ->where('a.status', 1)
        ->where('b.status', 1)
        ->get();
        return view('property.add_room', compact('allflor', 'get_facilities', 'get_bed', 'get_amenities', 'id'));
    }
}
