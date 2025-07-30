<?php

use App\Http\Controllers\ApiController;
use App\Http\Controllers\ApiPropertyController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\LoanRequestController;
use App\Http\Controllers\BorrowerController;
use App\Http\Controllers\KycController;
use App\Http\Controllers\EmiCollection;
use App\Http\Controllers\MessageController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });


// Route::post('user/signup', [AuthController::class, 'signup']);
// Route::post('user/login', [AuthController::class, 'login_bkp']);
// Route::post('user/user-resend-otp', [AuthController::class, 'resend_otp']);
Route::post('user/token-status', [AuthController::class, 'getTokenStatus']);
// Route::get('user/referal-signup', [AuthController::class, 'register_referral_user'])->name('referaluser');

// glob stay public route
Route::post('user/signup', [AuthController::class, 'signup']);
Route::post('user/user-login-otp', [AuthController::class, 'user_otp']);
Route::post('user/login', [AuthController::class, 'login_bkp']);
Route::get('fetch-category',[ApiController::class, 'fetch_category']);
Route::get('fetch-property',[ApiController::class, 'fetch_property']);
Route::get('fetch-single-property/{id}',[ApiController::class, 'fetch_single_property']);
Route::get('fetch-testimonial',[ApiController::class, 'fetch_testimonial']);
Route::get('fetch-blog',[ApiController::class, 'fetch_blog']);
Route::get('fetch-banner',[ApiController::class, 'fetch_banner']);
Route::get('fetch-seo',[ApiController::class, 'fetch_seo']);
Route::get('fetch-gallary',[ApiController::class, 'fetch_gallary']);
Route::get('fetch-pages',[ApiController::class, 'fetch_pages']);
Route::post('send-enquiry',[ApiController::class, 'send_enquiry']);
Route::get('fetch-review', [ApiController::class, 'fetch_review']);

Route::middleware(['jwt'])->group(function () {

    Route::get('user/genrate_invoice/{id}', [ApiController::class, 'genrate_invoice']);
    Route::post('user/upload-profile-picture', [ApiController::class, 'uploadProfilePicture']);
    Route::get('user/get-user', [ApiController::class, 'get_user']);
    Route::get('fetch-company-info',[ApiController::class, 'fetch_company_info']);
    // glob stay validate route
    Route::post('user/user-logout', [AuthController::class, 'user_logout']);
    Route::post('user/post-review', [ApiController::class, 'post_review']);
    Route::post('user/property-whislist', [ApiController::class, 'property_whislist']);
    Route::get('user/get-transaction', [ApiController::class, 'get_transaction']);

    // vehcile routes
    Route::get('user/vehicle', [ApiPropertyController::class, 'index']);
    Route::post('user/vehicle/create', [ApiPropertyController::class, 'create']);
    Route::post('user/vehicle/update', [ApiPropertyController::class, 'update']);
    Route::get('user/vehicle/{id}', [ApiPropertyController::class, 'edit']);
    Route::post('user/vehicle/delete/{id}', [ApiPropertyController::class, 'destroy']);


    // Check if data exists
    Route::post('user/properties/check', [ApiPropertyController::class, 'check_exist_data']);
    // Delete an image
    Route::post('user/properties/image/delete', [ApiPropertyController::class, 'delete_image']);

    Route::post('user/permission', [ApiController::class, 'permission']);
    Route::post('user/update-profile', [ApiController::class, 'update_profile']);
    Route::post('user/booking',[ApiController::class, 'booking']);
    Route::get('user/booking/list',[ApiController::class, 'booking_list']);
    Route::get('user/booking/{id}',[ApiController::class, 'get_booking']);
    Route::post('user/booking/update',[ApiController::class, 'booking_update']);






    Route::post('user/get-aadhar-otp',[ApiController::class, 'get_aadhar_otp']);
    Route::post('user/check-aadhar-otp',[ApiController::class, 'checkaadharotp']);
    Route::post('user/update-kyc',[ApiController::class, 'update_kyc']);
    Route::post('user/referal', [AuthController::class, 'referal']);
    Route::post('user/get-services', [ApiController::class, 'get_services']);
    Route::post('user/get-packages', [ApiController::class, 'get_packages']);
    Route::post('user/create-pet', [ApiController::class, 'create_pet']);
    Route::match(['get', 'post'], 'user/update-pet/{id}', [ApiController::class, 'update_pet']);
    Route::delete('user/delete-pet', [ApiController::class, 'delete_pet']);
    Route::post('user/list-pet', [ApiController::class, 'list_pet']);
    Route::post('user/create-booking', [ApiController::class, 'create_booking']);
    Route::post('user/accept-booking', [ApiController::class, 'accept_booking']);
    Route::post('user/fetch-grommer-booking', [ApiController::class, 'fetch_booking']);
    Route::post('user/messages', [MessageController::class, 'getMessages']);
    Route::post('user/send-message', [MessageController::class, 'sendMessage']);
    Route::post('user/mark-as-read', [MessageController::class, 'markAsRead']);
    Route::post('user/fetch-all-users', [MessageController::class, 'fetchUsers']);



    Route::post('user/user-create-pin', [AuthController::class, 'create_pin']);
    Route::get('user/loan-request-list', [LoanRequestController::class, 'loan_request_list']);
    Route::post('user/update-email-mobile', [BorrowerController::class, 'update_email_mobile_request']);
    Route::post('user/update-new-email-mobile', [BorrowerController::class, 'update_new_email_mobile_request']);
    // Route::post('user/update-profile', [BorrowerController::class, 'update_profile']);
    Route::post('user/approve-update-request', [BorrowerController::class, 'approve_update_request']);
    Route::get('user/update-request-list', [BorrowerController::class, 'update_request_list']);
    Route::post('user/loan-request', [LoanRequestController::class, 'create_loan_request']);
    Route::post('user/create-loan', [LoanRequestController::class, 'create_loan']);
    Route::get('user/loan-list', [LoanRequestController::class, 'loan_list']);
    Route::post('user/loan-approval', [LoanRequestController::class, 'loan_approval']);
    Route::get('user/user-profile', [BorrowerController::class, 'user_profile']);
    Route::get('user/user-list', [BorrowerController::class, 'user_list']);
    Route::post('user/user-update-status', [BorrowerController::class, 'user_update_status']);
    Route::post('user/user-kyc', [KycController::class, 'user_kyc_request']);
    Route::get('user/kyc-request-list', [KycController::class, 'kyc_request_list']);
    Route::post('user/kyc-apporval', [KycController::class, 'kyc_approval']);
    Route::post('user/kyc-pending-list', [KycController::class, 'kyc_pending_list']);
    Route::post('user/kyc-submit', [KycController::class, 'kyc_submit']);
    Route::get('user/my-loan', [LoanRequestController::class, 'my_loan']);
    Route::post('user/upload-kyc-docs', [KycController::class, 'kycDocs']);
    Route::get('user/loan-reports', [LoanRequestController::class, 'loan_report']);
    Route::get('user/service-list', [LoanRequestController::class, 'service_list']);
    Route::get('user/ready-for-disbursement-loan', [LoanRequestController::class, 'ready_for_disbursement_loan']);
    Route::post('user/loan-disbursement', [LoanRequestController::class, 'loan_disbursement']);
    Route::post('user/borrower-image', [LoanRequestController::class, 'borrower_image']);
    Route::post('user/disbursement-otp', [LoanRequestController::class, 'disbursement_otp']);
    Route::get('user/payment-modes', [LoanRequestController::class, 'payment_modes']);
    Route::get('user/bank-details', [LoanRequestController::class, 'bank_details']);
    Route::post('user/emi-collection', [EmiCollection::class, 'emi_collection']);
    Route::get('user/borrower-loan', [EmiCollection::class, 'borrower_loan']);
    Route::get('user/route-agent-loan', [BorrowerController::class, 'route_agent_list']);
    Route::post('user/emi-details', [EmiCollection::class, 'emi_details']);
    Route::get('user/receieve-emi', [EmiCollection::class, 'receieve_emi']);
    Route::post('user/emi-pay', [EmiCollection::class, 'emi_pay']);
});
