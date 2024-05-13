import 'package:HotelAppUser/bindings/intialbindings.dart';
import 'package:HotelAppUser/core/localization/changelocal.dart';
import 'package:HotelAppUser/core/localization/translation.dart';
import 'package:HotelAppUser/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:HotelAppUser/routes/app_routes.dart';

void main() async {                            
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());

    return GetMaterialApp(
      translations: MyTranslation(),

      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'hotel relaxe',
      locale: controller.language,

      debugShowCheckedModeBanner: false,
      //initialRoute: AppRoutes.homeScreenContainerScreen,
      initialBinding: InitialBindings(),
       //initialRoute: AppRoutes.hotelScreenAdmin,
      //initialRoute: AppRoutes.recentlyBookedScreen,
      
      getPages: routes,
    );
  }
}
