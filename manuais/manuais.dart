import 'package:admob_flutter/admob_flutter.dart';
import 'package:comunidadecomet/manuais/125-250.dart';
import 'package:comunidadecomet/manuais/650.dart';
import 'package:comunidadecomet/manuais/Delphi.dart';
import 'package:comunidadecomet/manuais/EFI.dart';
import 'package:comunidadecomet/manuais/carburada.dart';
import 'package:comunidadecomet/utilitarios/Admob_admob.dart';
import 'package:comunidadecomet/utilitarios/banner.dart';
import 'package:flutter/material.dart';

class Manuais extends StatefulWidget {
  @override
  _ManuaisState createState() => _ManuaisState();
}

class _ManuaisState extends State<Manuais> {
  AdmobBannerSize bannerSize;
  AdmobInterstitial interstitialAd;
  AdmobReward rewardAd;

  @override
  void initState() {
    super.initState();
    bannerSize = AdmobBannerSize.LARGE_BANNER;

    interstitialAd = AdmobInterstitial(
      adUnitId: getInterstitialAdUnitId(),
      listener: (AdmobAdEvent event, Map<String, dynamic> args) {
        if (event == AdmobAdEvent.closed) interstitialAd.load();
      },
    );

    rewardAd = AdmobReward(
        adUnitId: getRewardBasedVideoAdUnitId(),
        listener: (AdmobAdEvent event, Map<String, dynamic> args) {
          if (event == AdmobAdEvent.closed) rewardAd.load();
        });

    interstitialAd.load();
    rewardAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center(
      //decoration: BoxDecoration(

      child: ListView(
        children: <Widget>[

          Divider(
            height: 50,
            color: Colors.blueGrey,
          ),


          FlatButton(
            child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F0.jpg?alt=media&token=8308f38a-40ae-4cd3-aca2-0362c8ef4c45',
              fit: BoxFit.cover,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Carburada()));
              interstitialAd.show();
            },
          ),
          Divider(
            height: 50,
            color: Colors.amberAccent,
          ),
          FlatButton(
            child:Container(
              height:300 ,width: 400,
              child:Image.network(
                'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F0.jpg?alt=media&token=eb3db381-f403-4819-b621-be806d20cb35',
                fit: BoxFit.cover,
              ), ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Carburada2()));
              interstitialAd.show();
            },
          ),
          Divider(
            height: 50,
            color: Colors.amberAccent,
          ),
          FlatButton(
            child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F0.jpg?alt=media&token=72422050-5d52-42e3-82c9-a9e42be27072',
              fit: BoxFit.cover,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Delphi()));
              interstitialAd.show();
            },
          ),
          Divider(
            height: 50,
            color: Colors.amberAccent,
          ),
BannerQuadrado(),
          Divider(
            height: 50,
            color: Colors.amberAccent,
          ),
          FlatButton(
            child:Container(
              height:300 ,width: 400,
              child:Image.network(
                'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F0.jpg?alt=media&token=ac564e11-c995-43c7-af0a-e689c6930775',
                fit: BoxFit.cover,
              ), ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Comt650()));
              interstitialAd.show();
            },
          ),
          Divider(
            height: 50,
            color: Colors.amberAccent,
          ),
          FlatButton(
            child: Container(
              height:300 ,width: 400,
              child:Image.network(
              'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F0.jpg?alt=media&token=b542db78-9b8a-482f-9261-681602dfc0fd',
              fit: BoxFit.cover,
            ),) ,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Efi()));
              interstitialAd.show();
            },
          ),
          Divider(
            height: 100,
            color: Colors.amberAccent,
          ),
         BannerQuadrado()
        ],
      ),
    ),);
  }

  @override
  void dispose() {
    super.dispose();
    Admob_admob();
  }
}
