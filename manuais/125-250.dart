import 'package:admob_flutter/admob_flutter.dart';
import 'package:comunidadecomet/utilitarios/Admob_admob.dart';
import 'package:comunidadecomet/utilitarios/banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';

class Carburada2 extends StatefulWidget {
  @override
  _Carburada2State createState() => _Carburada2State();
}

class _Carburada2State extends State<Carburada2> {
  AdmobBannerSize bannerSize;
  AdmobInterstitial interstitialAd;
  AdmobReward rewardAd;

  @override
  void initState() {
    super.initState();
    bannerSize = AdmobBannerSize.BANNER;

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
    return Scaffold(
        appBar:AppBar(title: Center(child:  BannerC(

        )),),
        body: SafeArea(
            child: PragaRuin(),

        ));
  }
}

// ignore: must_be_immutable
class PragaRuin extends StatefulWidget {
  List m125 = [
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F0.jpg?alt=media&token=eb3db381-f403-4819-b621-be806d20cb35',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F1.jpg?alt=media&token=6f0fac86-3ec0-4f4d-ab1b-76a116f5438f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F2.jpg?alt=media&token=782f0805-c18e-4590-9bed-33ac81d40abc',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F3.jpg?alt=media&token=e8db4ca3-6074-4a70-aca1-5c7cfb811d66',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F4.jpg?alt=media&token=3e38c907-84a3-4d92-aacc-8467679cf846',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F5.jpg?alt=media&token=518f130a-98d9-4afb-82e7-e8b8777a9223',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F6.jpg?alt=media&token=9bd2b034-17ca-4459-9770-d5ae66f501f7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F7.jpg?alt=media&token=99e29d67-1a94-4df8-9829-9caf512eb23b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F8.jpg?alt=media&token=dd469b87-bdb2-41c9-98c8-b4d6e7e196c8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F9.jpg?alt=media&token=4e561a57-e940-4818-8dcb-3ddf8a1503d1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F10.jpg?alt=media&token=f918a604-24d8-41a1-9ba1-de8d27e7bc0d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F11.jpg?alt=media&token=de2fa9ef-6738-4984-b7f7-7760baa12a97',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F12.jpg?alt=media&token=fe0a57ba-e614-408e-bbaa-6a1b4c5d3aad',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F13.jpg?alt=media&token=a6486075-c35b-405a-890c-30ae6cf58638',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F14.jpg?alt=media&token=ee298329-aadb-4700-9b77-b2dab7fb6c7f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F15.jpg?alt=media&token=603f24d7-5d0d-4ac5-8dc3-4e358d2376dd',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F16.jpg?alt=media&token=0e0f4d23-dd02-4843-855e-85ed94735d8a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F17.jpg?alt=media&token=4b30fbdb-3803-489a-bbec-141b7e60876c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F18.jpg?alt=media&token=0cf084c8-b3e5-45d1-9e89-7e475675145a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F19.jpg?alt=media&token=7c9a1130-bc11-4d92-850f-9fa798d090d0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F20.jpg?alt=media&token=8087125e-aa61-45b7-b6d4-948d0f9cd989',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F21.jpg?alt=media&token=2e3047b3-5205-4065-bdc6-59bd91547811',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F22.jpg?alt=media&token=a1a268b7-c6bf-4c27-96a4-7e35855ef587',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F23.jpg?alt=media&token=5b17f562-f88e-4bc7-aec4-dc4ba9b395dd',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F24.jpg?alt=media&token=f422e523-13f5-47f6-ae3f-b858d2de3bf3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F25.jpg?alt=media&token=307babf2-f0ec-4a87-9ee3-a83743422f67',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F26.jpg?alt=media&token=042471cc-c7aa-426e-a54f-bdc758a40080',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F27.jpg?alt=media&token=d5e6ce7c-0766-4196-8d01-10b7261b8789',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F28.jpg?alt=media&token=2d9420c9-db0b-467d-a477-65c0c67ae47b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F29.jpg?alt=media&token=dbff87d9-49cf-42ad-9dd7-dd64f0c4966f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F30.jpg?alt=media&token=7e443ec7-0c9f-4ccd-addb-b03544b19d1f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F31.jpg?alt=media&token=4fd935fb-f29f-4811-b789-e286ed870442',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F32.jpg?alt=media&token=85584642-c79a-45b2-ab73-4102754b262b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F33.jpg?alt=media&token=b9b4c7da-6b02-4f69-a649-29ed81f9a813',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F34.jpg?alt=media&token=01f9c142-8a55-40ba-841e-efa237a6d990',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F35.jpg?alt=media&token=d5095aac-e29d-47de-9a11-dfe5c75382be',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F36.jpg?alt=media&token=941d71fe-437e-45ee-86c1-01e68a389c7b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F37.jpg?alt=media&token=a24c97f6-4422-447f-be67-951351ad57d9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F38.jpg?alt=media&token=512b2e16-8af2-4fa0-9584-7f93f4ec2802',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F39.jpg?alt=media&token=279c175c-d931-4918-b79d-f0571ffd15c9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F40.jpg?alt=media&token=37466621-1d9f-45e9-8c82-c7a7ebf54b52',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F41.jpg?alt=media&token=63de1771-be07-47e7-8a71-14391e0b88b2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F42.jpg?alt=media&token=d59bffd1-f604-4224-9748-c0d274a035b0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F43.jpg?alt=media&token=69053b1a-cddb-4344-ac65-9d6cf48f8af8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F44.jpg?alt=media&token=f11504a0-da27-4871-9700-ae61eebd0645',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F45.jpg?alt=media&token=0e3ec0b7-7ab0-495f-8b4d-d02a8765b045',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F46.jpg?alt=media&token=4f8c92f8-4fc8-4d45-b12f-8e190b5943c0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F47.jpg?alt=media&token=0f25408b-011c-4dfb-945f-714f9bf32d92',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F48.jpg?alt=media&token=43cb06f4-022f-4da5-b759-49275a0fcfe5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F49.jpg?alt=media&token=37fcee6d-5a68-4da3-8a5b-e2bf3de729a4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F50.jpg?alt=media&token=33446f09-5693-4e8f-a0d0-fb30c94b196b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F51.jpg?alt=media&token=31991453-b48f-442a-8603-409853b3e361',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F52.jpg?alt=media&token=15096f00-882f-439f-b062-24b3e10ece15',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F53.jpg?alt=media&token=fa9432a5-ad1d-4e51-bec8-a2ff6a1828a6',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F54.jpg?alt=media&token=037481ff-8b42-42dc-b1ec-38329906506e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F55.jpg?alt=media&token=bd06d93a-e1be-4f68-9a25-873f2b4e425d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F56.jpg?alt=media&token=bec49ca2-3405-4ccf-9fda-558290ddfc38',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F57.jpg?alt=media&token=c141f948-f781-4c46-8290-aba2a39175da',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F58.jpg?alt=media&token=3a005040-03f1-4e0d-a296-155448403c10',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F59.jpg?alt=media&token=42544cd1-7d6e-4fca-912a-b91a576c35ff',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F60.jpg?alt=media&token=e901ab86-77c3-4fd5-85f3-abfc620de833',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F61.jpg?alt=media&token=0584e71e-1d34-4ca3-aa67-3fb69b61016b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F62.jpg?alt=media&token=f0e07163-c1ca-441a-b271-99fd9d80d10d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F63.jpg?alt=media&token=70020e02-fb18-401c-a57c-58bca8154aaf',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F64.jpg?alt=media&token=71de312b-42c8-4098-9e51-e15576162262',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F65.jpg?alt=media&token=bdc6747c-5da3-46a2-86a6-121e6f791148',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F66.jpg?alt=media&token=c4241358-4dde-44bc-87a7-1f4814702830',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F67.jpg?alt=media&token=8f624ee6-e7d2-47ea-ac15-7ce495c90d3b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F68.jpg?alt=media&token=9809ec9c-4903-47e9-9bad-ae177e1b1467',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F69.jpg?alt=media&token=2ccb02e7-3379-494e-a266-0191aacfe170',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F70.jpg?alt=media&token=63ca3a89-6db2-478b-9e5e-4385ea10bb16',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F71.jpg?alt=media&token=2e0ddc9a-fb40-4c01-b3e7-f9f79b91ee98',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F72.jpg?alt=media&token=a3b8a53f-9485-4b1f-9cf5-e053c6df6021',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F73.jpg?alt=media&token=8e2a9f40-91da-4553-b87d-eea28e573f2e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F74.jpg?alt=media&token=8d02d7c3-791b-40e4-9f43-3adc954bf546',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F75.jpg?alt=media&token=a785a060-ac0c-4030-b0f9-bd3ce4cdfc6f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F76.jpg?alt=media&token=54eaa452-cf56-4526-abf0-31b067de7165',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F77.jpg?alt=media&token=8c81b763-3bea-400d-93b3-d791036535f5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F78.jpg?alt=media&token=ef8605ab-6060-4fd0-8569-816d69c6ec69',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F79.jpg?alt=media&token=80112ae0-3c13-4da8-b43c-dc2762b3b069',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F80.jpg?alt=media&token=5a33a0b0-aaae-4a7f-ae93-61cf4845e02e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F81.jpg?alt=media&token=3f7a2791-6e0c-4cfe-93a8-61dfb3564f76',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F82.jpg?alt=media&token=9b462e65-4224-4194-b147-f30e9907f877',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F83.jpg?alt=media&token=c584b9d6-b609-4258-a291-6b561ccce1a7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F84.jpg?alt=media&token=6a34a091-21b0-4813-b4e2-6813440b8d8a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F125.250%2F85.jpg?alt=media&token=c9731f81-6248-4191-9b55-367fd80f8d58',
  ];
  @override
  _PragaRuinState createState() => _PragaRuinState();
}

class _PragaRuinState extends State<PragaRuin> {
  @override
  Widget build(BuildContext context) {
    return GestureZoomBox(
        maxScale: 3.0,
        doubleTapScale: 2.0,
        duration: Duration(milliseconds: 150),
        child: ListView.builder(
          itemBuilder: _buildPragaRuinItem,
          itemCount: widget.m125.length,
        ));
  }

  Widget _buildPragaRuinItem(BuildContext context, int index) {
    int bane = 4;

    if (index == bane ||
        index == 12 ||
        index == 20 ||
        index == 30 ||
        index == 20 ||
        index == 40 ||
        index == 60 ||
        index == 85 
        
       ) {
          return
              Bannerlargo();
    } else {
      return Container(
        child: Column(
          children: <Widget>[
            Divider(
              color: Colors.red,
              height: 20,
            ),
            Image.network(
              widget.m125[index],
              fit: BoxFit.cover,
            ),
          ],
        ),
      );
    }
  }
}
