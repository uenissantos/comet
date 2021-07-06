import 'package:admob_flutter/admob_flutter.dart';
import 'package:comunidadecomet/utilitarios/Admob_admob.dart';
import 'package:flutter/material.dart';

class BannerC extends StatefulWidget {




  @override
  _BannerCState createState() => _BannerCState();
}

class _BannerCState extends State<BannerC> {


  @override
  Widget build(BuildContext context) {

    return Container(
      // margin: EdgeInsets.only(bottom: 20.0),
      child: AdmobBanner(
        adUnitId: getBannerAdUnitId(),
       adSize: AdmobBannerSize.BANNER,
        listener: (AdmobAdEvent event, Map<String, dynamic> args) {},
      ),
    );
  }
}


class Bannerlargo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //
      margin: EdgeInsets.only(bottom: 80.0),
      child: AdmobBanner(
        adUnitId: getBannerAdUnitId(),
        adSize: AdmobBannerSize.LARGE_BANNER,
        listener: (AdmobAdEvent event, Map<String, dynamic> args) {},
      ),
    );
  }
}

class BannerQuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      //
      margin: EdgeInsets.only(bottom: 80.0),
      child: AdmobBanner(
        adUnitId: getBannerAdUnitId(),
        adSize: AdmobBannerSize.MEDIUM_RECTANGLE,
        listener: (AdmobAdEvent event, Map<String, dynamic> args) {},
      ),
    );;
  }
}
