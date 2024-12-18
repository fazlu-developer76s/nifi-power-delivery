<?php
namespace App\Helpers;

use App\Models\Company;
use App\Models\User;
use DB;
class Global_helper
{
    public static function GenerateOTP($userDetails,$module_type,$otp_type,$mobile = "")
    {
        // dd($mobile);
        // $module_type  is the module type like 1 login 2 update email or mobile
        // $otp_type is the type of OTP like 1 for mobile 2 for email

        $expire_previous_otp = self::ExpireOTP($userDetails->id, $module_type, $otp_type);

        $otp = self::userOTP($userDetails, $mobile);
        if($mobile)
        {
            $genrateOTP = DB::table('tbl_otp')->insert([
                'otp' => $otp,
                'user_id' => $userDetails->id, // Assuming you want to associate the OTP with a user
                'module_type' => $module_type,
                'otp_type' => $otp_type,
                'field_value' => $mobile,
                'created_at' => now(), // Current timestamp
                'updated_at' => now(),
            ]);
        }
        else
        {
            $genrateOTP = DB::table('tbl_otp')->insert([
                'otp' => $otp,
                'user_id' => $userDetails->id, // Assuming you want to associate the OTP with a user
                'module_type' => $module_type,
                'otp_type' => $otp_type,
                'created_at' => now(), // Current timestamp
                'updated_at' => now(),
            ]);
        }

        if($genrateOTP)
        {
          return true;
        }
    }

    public static function ExpireOTP($user_id,$module_type,$otp_type)
    {
       $expireOTP = DB::table('tbl_otp')
            ->where('user_id', $user_id)
            ->where('status',1)
            ->where('module_type',$module_type)
            ->where('otp_type',$otp_type)
            ->update(['status' => 2]);
        if($expireOTP)
        {
            return true;
        }

    }

    public static function userOTP($userDetails,$mobile = "")
    {
        // SMS API Integration
        $otp = 1234;
        return $otp;
        $mobile_no = ($mobile) ? $mobile : $userDetails->mobile_no;
        // dd($mobile_no); die;
        $entity_id = 1701159540601889654;
        $senderId  = "NRSOFT";
        $temp_id   = "1707164805234023036";
        $userid = "NERASOFT1";
        $otp = rand(1000, 9999);
        $request = "Login Request";
        $password = 111321;
        $temp = "Dear User Your OTP For Login in sixcash is $otp Valid For 10 Minutes. we request you to don't share with anyone .Thanks NSAFPL";
        $url = 'http://sms.nerasoft.in/api/SmsApi/SendSingleApi?' . http_build_query([
            'UserID'    => $userid,
            'Password'  => $password,
            'SenderID'  => $senderId,
            'Phno'      => $mobile_no,
            'Msg'       => $temp,
            'EntityID'  => $entity_id,
            'TemplateID'=> $temp_id
        ]);
        $ch = curl_init();

        // Set cURL options
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, 1); // Use POST request
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); // Return the response as a string

        // Execute cURL request
        $response = curl_exec($ch);
        // Check for cURL errors
        if ($response === false) {
            $error = curl_error($ch);
            // Handle error (log it, etc.)
            curl_close($ch);
            return "Error: $error";
        }

        // Close cURL
        curl_close($ch);

        // Return the API response
        return $otp;
    }

    public static function GenerateEmailOTP($user_info, $module_type, $otp_type, $email = "")
    {
        $expire_previous_otp = self::ExpireOTP($user_info->id,$module_type, $otp_type);
        $otp = rand(1000, 9999);
        if($email)
        {
            $genrateOTP = DB::table('tbl_otp')->insert([
                'otp' => $otp,
                'user_id' => $user_info->id, // Assuming you want to associate the OTP with a user
                'module_type' => $module_type,
                'otp_type' => $otp_type,
                'field_value' => $email, // Assuming you want to associate the OTP with a user
                'created_at' => now(), // Current timestamp
                'updated_at' => now(),
            ]);
        }
        else
        {
        $genrateOTP = DB::table('tbl_otp')->insert([
            'otp' => $otp,
            'user_id' => $user_info->id, // Assuming you want to associate the OTP with a user
            'module_type' => $module_type,
            'otp_type' => $otp_type,
            'created_at' => now(), // Current timestamp
            'updated_at' => now(),
        ]);
        }
        $data['to'] = ($email) ? $email : $user_info->email; // Placeholder email
        // dd($data);
        $data['subject'] = 'OTP to Email verify to update email address - Nifi Payments';
        $data['body'] = '
            <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>User Login Successfully</title>
                 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f7;
            color: #51545e;
            margin: 0;
            padding: 0;
            -webkit-text-size-adjust: none;
        }
        .email-wrapper {
            max-width: 100%;
            background-color: #f4f4f7;
            padding: 20px;
        }
        .email-content {
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            border: 1px solid #eaeaec;
            padding: 20px;
            border-radius: 5px;
        }
        .email-header {
            text-align: center;
            background-color: #4CAF50;
            padding: 10px;
            color: white;
            border-radius: 5px 5px 0 0;
        }
        .email-body {
            padding: 20px;
            color: #51545e;
            line-height: 1.6;
        }
        .email-footer {
            text-align: center;
            padding: 20px;
            font-size: 12px;
            color: #999;
        }
        .button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
        }
        .warning {
            color: #ff0000;
            font-weight: bold;
        }
    </style>
            </head>
            <body>
                <div class="email-wrapper">
                    <div class="email-content">
                        <div class="email-header">
                            <h2>OTP to verify your registered email id</h2>
                        </div>
                        <div class="email-body">
                            <p>Hi ' . $user_info->name . ',</p>
                            <p> Please use otp ' . $otp . ' to verify your registered email address.</p>
                             <p>Best regards,</p>
                            <p style="color:red">If this request not made by you please contact the support or <a href="#">click here</a> to take immediate action.</p>
                            <p><strong>Sixcash Team</strong></p>
                        </div>
                    </div>
                </div>
            </body>
            </html>';

            return $data;
    }


    public static function calculateEMI($principal, $annualInterestRate, $loanTenureYears)
    {
        // Monthly EMI calculation
        $monthlyEMI = self::calculatePeriodicEMI($principal, $annualInterestRate, $loanTenureYears, 12);

        // Weekly EMI calculation (52 weeks in a year)
        $weeklyEMI = self::calculatePeriodicEMI($principal, $annualInterestRate, $loanTenureYears, 52);

        // Daily EMI calculation (365 days in a year)
        $dailyEMI = self::calculatePeriodicEMI($principal, $annualInterestRate, $loanTenureYears, 365);

        return [
            'monthly_emi' => $monthlyEMI,
            'weekly_emi' => $weeklyEMI,
            'daily_emi' => $dailyEMI
        ];
    }

    /**
     * Helper function to calculate EMI for any period
     *
     * @param float $principal
     * @param float $annualInterestRate
     * @param int $loanTenurePeriods
     * @param int $periodsPerYear
     * @return float
     */
    public static function calculatePeriodicEMI($principal, $annualInterestRate, $loanTenurePeriods, $periodsPerYear)
    {
        // Convert annual interest rate to the rate per period
        $periodicInterestRate = ($annualInterestRate / 100) / $periodsPerYear;

        // EMI calculation formula
        $emi = ($principal * $periodicInterestRate * pow(1 + $periodicInterestRate, $loanTenurePeriods)) /
               (pow(1 + $periodicInterestRate, $loanTenurePeriods) - 1);

        return number_format($emi, 2);
    }

    public static function getDynamicUrl(){
      return  DB::table('dynamic_url')->where('status',1)->get();
    }

    public static function companyDetails()
    {
        return Company::where('status',1)->first();
    }
    
    
    public static function getRolePermissions($role_id,$permission_name){

        $get_permission = DB::table('role_permission as a')->join('permissions as b','a.permission_id', '=' , 'b.id')->join('permission_category as c','b.per_cate_id','=','c.id')->
        select('a.*','b.title','c.category_name')->where('a.status',1)->where('b.status',1)->where('c.status',1)->where('a.role_id',$role_id)->where('b.title',$permission_name)->first();
            
        if(isset($get_permission->permission_status) && $get_permission->permission_status == 1){
            return 1;
        }else{
            return 2;
        }
    }

 public static function getSidebarRolePermissions($role_id, $category_name)
{
    // Fetch the category based on the category name
    $get_category = DB::table('permission_category')
        ->where('status', 1)
        ->where('category_name', $category_name)
        ->first();

    // If the category is not found, return 2 (no permissions)
    if (!$get_category) {
        return 2;
    }

    // Fetch permissions for the given role and category
    $get_permission = DB::table('permissions as a')
        ->join('role_permission as b', 'b.permission_id', '=', 'a.id')
        ->select('a.*', 'b.permission_status as permission_status')
        ->where('a.status', 1)
        ->where('b.status', 1)
        ->where('b.role_id', $role_id)
        ->where('a.per_cate_id', $get_category->id)
        ->where(function ($query) {
            $query->orWhere('b.permission_status', 1);
        })
        ->get();

    // Check if there is any permission with `permission_status`
    $has_permission = $get_permission->contains('permission_status', 1);

    return $has_permission ? 1 : 2;
}
 
    public static function Propertylist($type)
    {
        $query = DB::table('properties');
        if ($type==1 || $type == 2) {
            $query->where('is_property_verified', $type)->where('status', 1);
        }else{
              $query->where('status', 2 );
        }
    
        return $query->count();
    }
    
    public static function Sellers($type)
    {
        $query = DB::table('users');
        if ($type==1 || $type == 2) {
            $query->where('is_user_verified', $type)->where('status', 1);
        }else{
              $query->where('status', 2 );
        }
    
        return $query->count();
    }

  
    
    public static function Enquiry($type)
    {
        $query = DB::table('enquiries')->where('status', 1);
    
        if ($type == 1) {
            $query->whereNull('property_id');
        } elseif ($type == 2) {
            $query->whereNotNull('property_id');
        } else {
            return 0;
        }
    
        return $query->count();
    }
    
    public static function getTablesCount()
    {
        $tables = [
            'Category' => 'categories',
            'Amenities' => 'amenities',
            'Bed_Type' => 'bedtypes',
            'Banner' => 'banners',
            'Blog' => 'blogs',
            'Review' => 'property_reviews',
        ];
    
        $result = [];
    
        foreach ($tables as $name => $table) {
            $count = DB::table($table)->where('status', 1)->count();
            $result[] = [
                'name' => $name,
                'count' => $count,
            ];
        }
    
        return $result;
    }




}


