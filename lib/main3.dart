import 'package:flutt/adsManger.dart';
import 'package:flutt/profile2.dart';
import 'package:flutt/wallpaper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';
// import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';
// import 'package:unity_ads_plugin/unity_ads.dart';

import 'admob.dart';

class main3 extends StatefulWidget {
  static const String testDevice = 'Mobile_id';

  @override
  _main3State createState() => _main3State();
}

@override
void initState() {
  // UnityAds.init(
  //   gameId: '4608602',
  //   // testMode: true,
  // );
}

class _main3State extends State<main3> {
  // showInterstialAd(){
  //   myCustomadmob.interstitialAd()
  //     ..load()
  //     ..show(
  //       anchorType: AnchorType.bottom,
  //       anchorOffset: 0.0,
  //       horizontalCenterOffset: 0.0,
  //     );
  // }

  @override
  Widget build(BuildContext context) {
    final _nativeAd = NativeAdmobController();
    return Scaffold(
      backgroundColor: Colors.red[600],
      body: Container(
          color: Colors.red[600],
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                Container
                  (
                  width: 310,
                  height: 82,
                  child: NativeAdmob(
                    adUnitID: 'ca-app-pub-3308888383378667/3566584614',
                    //AdsManger.nativeAdunit,
                    numberAds: 3,
                    controller: _nativeAd,
                    type: NativeAdmobType.banner,
                  ),
                ),
                SizedBox(height: 20),
                /* Container(
                  height:200,
                  child: Image.asset('assets/R.png')),*/
                SizedBox(height: 130),
                /*  Container(
                  height:200,
                  child: Image.asset('assets/r2.png')),*/
                RaisedButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29)),
                    onPressed: () async {
                      // await UnityAds.showVideoAd(
                      //   placementId: 'Interstitial_Android',
                      //   listener: (state, args) {
                      //     if (state == UnityAdState.complete) {
                      //       print('int ads');
                      //     } else if (state == UnityAdState.skipped) {
                      //       print('User cancel video.');
                      //     }
                      //   },
                      // );
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return profile2();
                      }));
                    },
                    child: Text(
                      '???????? ???? ?????? ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w700),
                    )),
                SizedBox(height: 20),
                RaisedButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return wallpaper();
                      }));
                    },
                    child: Text(
                      '???????? ?????????? ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w700),
                    )),
                SizedBox(height: 70),
                Container
                  (
                  width: 310,
                  height: 82,
                  child: NativeAdmob(
                    adUnitID: 'ca-app-pub-3308888383378667/3566584614',
                    //AdsManger.nativeAdunit,
                    numberAds: 3,
                    controller: _nativeAd,
                    type: NativeAdmobType.banner,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
