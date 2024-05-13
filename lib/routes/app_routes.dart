import 'package:HotelAppUser/screen/admin_screens/hotel_screens/addressscreen.dart';
import 'package:HotelAppUser/screen/admin_screens/hotel_screens/logoutboutomsheet.dart';
import 'package:HotelAppUser/screen/admin_screens/image/addimagescreen.dart';
import 'package:HotelAppUser/screen/admin_screens/image/gallery_screen_admin/gallery_screen.dart';
import 'package:HotelAppUser/screen/admin_screens/image/gallery_screen_admin/widgets/gallery_item_widget.dart';
import 'package:HotelAppUser/screen/admin_screens/image/gallery_screen_admin/widgets/viewimage_widget.dart';
import 'package:HotelAppUser/screen/admin_screens/orders/vieworders.dart';
import 'package:HotelAppUser/screen/card_added_screen/card_added_screen.dart';
import 'package:HotelAppUser/screen/choose_payment_method_screen/choose_payment_method_screen.dart';
import 'package:HotelAppUser/screen/confirm_payment_screen/confirm_payment_screen.dart';
import 'package:HotelAppUser/screen/home_screen_page/home_screen_page.dart';
import 'package:HotelAppUser/screen/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:HotelAppUser/screen/hotel_details_screen/hotel_details_screen.dart';
import 'package:HotelAppUser/screen/select_date_guest_screen/select_date_guest_screen.dart';
import 'package:HotelAppUser/screen/booking_name_screen/booking_name_screen.dart';
import 'package:HotelAppUser/screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:HotelAppUser/screen/sign_up_blank_screen/verifycodesingup.dart';
import 'package:HotelAppUser/screen/view_ticket_screen/view_ticket_screen.dart';
import 'package:get/get.dart';
import '../core/middleware/mymiddleware.dart';
import '../screen/admin_screens/hotel_screens/addhotel.dart';
import '../screen/admin_screens/hotel_screens/edithotel.dart';
import '../screen/admin_screens/room_screens/add_room.dart';
import '../screen/admin_screens/room_screens/edit_room_screen.dart';
import '../screen/admin_screens/room_screens/view_room.dart';
import '../screen/admin_screens/hotel_screens/veiwhotels.dart';
import '../screen/create_new_password_screen/create_new_password_screen.dart';
import '../screen/fill_profile_screen/fill_profile_screen.dart';
import '../screen/forgot_password_filled_type_screen/forgot_password_filled_type_screen.dart';
import '../screen/forgot_password_screen/forgot_password_screen.dart';
import '../screen/forgot_password_type_otp_screen/forgot_password_type_otp_screen.dart';
import '../screen/languege_screen/language.dart';
import '../screen/my_bookmarks_screen/my_bookmarks_screen.dart';
import '../screen/notifications_screen/notifications_screen.dart';
import '../screen/onboarding_one_screen/onboarding_one_screen.dart';
import '../screen/onboarding_three_screen/onboarding_three_screen.dart';
import '../screen/onboarding_two_screen/onboarding_two_screen.dart';
import '../screen/sign_in_screen/sign_in_screen.dart';
import '../screen/sign_up_blank_screen/sign_up_blank_screen.dart';
import '../screen/splash_screen/binding/splash_binding.dart';
import '../screen/splash_screen/splash_screen.dart';
import '../screen/welcome_screen/binding/welcome_binding.dart';
import '../screen/welcome_screen/welcome_screen.dart';

class AppRoutes {
  static const String splashScreen = "/splashScreen";

  static const String languageScreen= '/language_screen';


  static const String welcomeScreen = '/welcome_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String letSYouInScreen = '/let_s_you_in_screen';
//================  auth  ====================================//

  static const String signUpBlankScreen = '/sign_up_blank_screen';

  static const String virifycodesingupScreen = '/virify_code_singup_Screen';

  static const String signInScreen = '/sign_in_screen';

  static const String fillProfileScreen = '/fill_profile_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordTypeOtpScreen =
      '/forgot_password_type_otp_screen';

  static const String forgotPasswordFilledTypeScreen =
      '/forgot_password_filled_type_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';


//==========================================================================//
  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String recentlyBookedScreen = '/recently_booked_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String myfavorite = '/my_favorite';

  static const String searchPage = '/search_page';

  static const String searchTypeScreen = '/search_type_screen';

  static const String filterResultScreen = '/filter_result_screen';

  static const String hotelDetailsScreen = '/hotel_details_screen';

  static const String hotelRooms = '/hotel_rooms_screen';

  static const String galleryScreen = '/gallery_screen';

  static const String locationScreen = '/location_screen';

  static const String reviewScreen = '/review_screen';

  static const String selectDateGuestScreen = '/select_date_guest_screen';

  static const String bookingNameScreen = '/booking_name_screen';

  static const String choosePaymentMethodScreen =
      '/choose_payment_method_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String cardAddedScreen = '/card_added_screen';

  static const String confirmPaymentScreen = '/confirm_payment_screen';

  static const String viewTicketScreen = '/view_ticket_screen';

  static const String bookingOngoingPage = '/booking_ongoing_page';

  static const String bookingOngoingTabContainerPage =
      '/booking_ongoing_tab_container_page';

  static const String bookingCompletedPage = '/booking_completed_page';

  static const String bookingCancelledPage = '/booking_cancelled_page';

  static const String refundMethodScreen = '/refund_method_screen';

  static const String profileSettingsPage = '/profile_settings_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String securityScreen = '/security_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  //============== admin ========//
  //hotel
  

  static const String hotelScreenAdmin = '/hotel_Screen_Admin';
  static const String logoutadminbottomsheet = '/logout-admin_bottomsheet';
  static const String addHotel = '/add_Hotel';
  static const String editHotel = '/edit_Hotel';
  static const String hoteladdress = '/hoteladdress';

//order
  static const String orderscreenadmin = '/order_screen_admin';


//room

  static const String viewroomadmin = '/viewroomadmin';
  static const String addroom = '/add_room';
  static const String editroom = '/edit_room';

// image
  static const String galleryadminscreen = '/galleryadminscreen';
  static const String galleryitemadminwidget = '/galleryitemadminwidget';
  static const String viewimagewidet = '/viewimagewidet';
  static const String addimagewidet = '/addimagewidet';
  

}

List<GetPage<dynamic>>? routes = [

  //   GetPage(
  //     name: AppRoutes.splashScreen,
  //     page: () => SplashScreen(),
  //        bindings: [
  //   SplashBinding(),
  // ],
  
  //   ),
   GetPage( name: "/", page: () =>  SplashScreen(), middlewares: [MyMiddleWare()],  bindings: [SplashBinding()],),
  GetPage(name: AppRoutes.homeScreenPage, page: () => HomeScreenPage()),
//  Auth
  // GetPage(name: AppRoutes.signUpBlankScreen, page: () => SignUpBlankScreen()),

  GetPage(name: AppRoutes.virifycodesingupScreen, page: () => VirifycodeSingupScreen()),
  GetPage(name: AppRoutes.signInScreen, page: () => SignInScreen()),
  GetPage(name: AppRoutes.fillProfileScreen, page: () => FillProfileScreen()),
  GetPage(name: AppRoutes.forgotPasswordScreen, page: () => ForgotPasswordScreen()),
  GetPage(name: AppRoutes.forgotPasswordTypeOtpScreen, page: () => ForgotPasswordTypeOtpScreen()),
  GetPage(name: AppRoutes.forgotPasswordFilledTypeScreen, page: () => ForgotPasswordFilledTypeScreen()),
  GetPage(
      name: AppRoutes.createNewPasswordScreen,
      page: () => CreateNewPasswordScreen()),

  // home
  GetPage(name: AppRoutes.hotelDetailsScreen, page: () => HotelDetailsScreen()),
  
  GetPage(name: AppRoutes.homeScreenContainerScreen, page: () => HomeScreenContainerScreen()),
    GetPage(name: AppRoutes.languageScreen, page: () => const LanguageScreen()),
       GetPage(name: AppRoutes.welcomeScreen, page: () => WelcomeScreen() ,
    bindings: [WelcomeBinding()],
  ),
       GetPage(name: AppRoutes.onboardingOneScreen, page: () => OnboardingOneScreen()),
       GetPage(name: AppRoutes.onboardingTwoScreen, page: () => OnboardingTwoScreen()),
       GetPage(name: AppRoutes.onboardingThreeScreen, page: () => OnboardingThreeScreen()),

  GetPage(
    name:AppRoutes.notificationsScreen,
    page: () => NotificationsScreen(),
    bindings: [
      // NotificationsBinding(),
    ],
  ),
  GetPage(
    name: AppRoutes.myfavorite,
    page: () => MyFavorite(),

  ),  GetPage(name: AppRoutes.editProfileScreen, page: () => EditProfileScreen()),
  GetPage(
      name: AppRoutes.selectDateGuestScreen,
      page: () => SelectDateGuestScreen()),

      GetPage(
      name: AppRoutes.bookingNameScreen,
      page: () => BookingNameScreen()),

  GetPage(
    name: AppRoutes.choosePaymentMethodScreen,
     page: () => ChoosePaymentMethodScreen()),

  GetPage(name: AppRoutes.cardAddedScreen, page: () => CardAddedScreen()),
  GetPage(name: AppRoutes.confirmPaymentScreen, page: () => ConfirmPaymentScreen()),
  GetPage(
      name: AppRoutes.viewTicketScreen, page: () => ViewTicketScreen()),

      //==============admin  ============//
      //hotel
      
  GetPage(name: AppRoutes.hotelScreenAdmin, page: () => HotelScreenAdmin()),
  GetPage(name: AppRoutes.logoutadminbottomsheet, page: () => LogoutadminBottomsheet()),
  GetPage(name: AppRoutes.addHotel, page: () => AddHotel()),
  GetPage(name: AppRoutes.editHotel, page: () => EditHotel()),
  GetPage(name: AppRoutes.hoteladdress, page: () => AddressHotel()),

  //orders
  
  GetPage(name: AppRoutes.orderscreenadmin, page: () => OrderScreenAdmin()),


  //room
  
  GetPage(name: AppRoutes.viewroomadmin, page: () => RoomScreenAdmin()),
  GetPage(name: AppRoutes.addroom, page: () => AddRoom()),
  GetPage(name: AppRoutes.editroom, page: () => EditRoomScreen()),
 
 //image
  GetPage(name: AppRoutes.galleryadminscreen, page: () => GalleryAdminScreen()),
  GetPage(name: AppRoutes.galleryitemadminwidget, page: () => GalleryItemAdminWidget()),
  GetPage(
      name: AppRoutes.viewimagewidet,
      page: () => ViewImageWidget()),
  GetPage(
      name: AppRoutes.addimagewidet,
      page: () => AddImageHotel()),

  


];
