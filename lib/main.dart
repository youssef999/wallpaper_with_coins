import 'package:flutt/main3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';
import 'package:native_admob_flutter/native_admob_flutter.dart';
//import 'package:unity_ads_plugin/unity_ads.dart';


final _nativeAdController = NativeAdmobController();


void main()async{

  WidgetsFlutterBinding.ensureInitialized();
 // _nativeAdController.reloadAd(forceRefresh: true);
 await MobileAds.initialize();
// MobileAds.setTestDeviceIds(['Redmi 5A']);
 final AppOpenAd appOpenAd=AppOpenAd();
 if(!appOpenAd.isAvaiable)
 await appOpenAd.load(unitId:'ca-app-pub-3308888383378667/5375200744' );
 else{
   print("ppp");
 }
  if(appOpenAd.isAvaiable)

 await appOpenAd.show();
  else{
    print("ppp");
  }
  // UnityAds.init(
  //   gameId: '4608602',
  //  // testMode: true,
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: main3(),
      debugShowCheckedModeBanner: false,
    );
  }
}
