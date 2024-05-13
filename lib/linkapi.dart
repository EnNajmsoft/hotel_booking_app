class AppLink {
  static const String server = "http://192.168.43.2/hotel_app";
    //  static const String server = "http://192.168.43.2/hotel_app";
static String linkImageHotelRoot = "http://192.168.43.2/hotel_app/upload/hotels";
  static String linkImageRoomRoot = "http://192.168.43.2/hotel_app/upload/rooms";
  static String linkImageUserRoot =
 "http://169.254.246.73/hotel_app/upload/users";

//
  static const String test = "$server/test.php";

// ================================= Auth ========================== //

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String loginadmin = "$server/auth/loginadmin.php";
  static const String verifycodessignup = "$server/auth/verfiycode.php";
  static const String resend = "$server/auth/resend.php";


// ================================= ForgetPassword ========================== //

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword = "$server/forgetpassword/resetpassword.php";
  static const String verifycodeforgetpassword = "$server/forgetpassword/verifycode.php";

// ================================= Auth Admin ========================== //

  static const String signUpAdmin            = "$server/owner/signup.php";
  static const String loginAdmin             = "$server/owner/login.php";
  static const String verifycodessignupAdmin = "$server/owner/verfiycode.php";
  static const String resendAdmin            = "$server/owner/resend.php";


//============================== Home ===================================//

  static const String homehotel =  "$server/home/viewhotels.php";
  static const String homeroom  =  "$server/home/viewrooms.php";
  static const String search    =  "$server/home/searchhotel.php";

//=======================================================================//

//============================ order =======================================//
  static const String vieworder      = "$server/order/vieworder.php";
  // static const String cancilorder = "$server/home/searchhotel.php";cancelorder
  static const String addorder       = "$server/order/addorder.php";
  static const String cancelorder    = "$server/order/cancelorder.php";

//================== foverite ======================================//

  static const String favoriteAdd        = "$server/favorite/add.php";
  static const String favoriteRemove     = "$server/favorite/remove.php";
  static const String favoriteView       = "$server/favorite/view.php";
  static const String deletefromfavroite ="$server/favorite/deletefromfavroite.php";
      
//==========================================================================//
  //hotel
    static const String hotelpage     = "$server/hotels/view.php";
   static const String hoteldetalpage = "$server/hotelditale.php";

////////////////////////////user//////////////////////
  static const String userprofil     = "$server/user/view.php";
  static const String userprofiledit = "$server/user/useredit.php";


//======================== rate ===================//
  static const String addrate   = "$server/rate/add.php";
  static const String viewrate  = "$server/rate/view.php";

//=====================================================//

//========================== admin ===============================//
//hotels
 static const String linkViewhotel      = "$server/hotels/viewadmin.php";
 static const String linkAddhotel       = "$server/hotels/add.php";
 static const String linkEdithotel      = "$server/hotels/edit.php";
static const String linkEditActivehotel = "$server/hotels/editactive.php";
 static const String linkdelethotel     = "$server/hotels/delete.php";



//address

  static const String linkViewaddress      = "$server/address/view.php";
  static const String linkAddhotelddress   = "$server/address/add.php";
  static const String linkEdithotelddress  = "$server/address/edit.php";
  static const String linkdelethotelddress = "$server/address/delete.php";

//order
  static const String linkVieweOrder = "$server/order/viewall.php";


//rooms
  static const String linkVieweRoom      = "$server/rooms/view.php";
  static const String linkAddRoom        = "$server/rooms/add.php";
  static const String linkEditRoom       = "$server/rooms/edit.php";
  static const String linkEditActiveRoom = "$server/rooms/editactive.php";
  static const String linkdeletRoom      = "$server/rooms/delete.php";
//image
 static const String linkViewImage      = "$server/images/view.php";
 static const String linkAddImage       = "$server/images/add.php";
 static const String linkEditImage      = "$server/images/edit.php";
 static const String linkDeleteImage    = "$server/images/delete.php";
}
