import 'package:admob_flutter/admob_flutter.dart';
import 'package:comunidadecomet/PE%C3%87AS/view/ZoonImage.dart';
import 'package:comunidadecomet/utilitarios/Admob_admob.dart';
import 'package:comunidadecomet/utilitarios/banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';

class Comt650 extends StatefulWidget {
  @override
  _Comt650State createState() => _Comt650State();
}

class _Comt650State extends State<Comt650> {
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
        appBar: AppBar(title: Center(child:  BannerC(

        )),),
        body: SafeArea(
            child: PragaRuin(),

        ));
  }
}

// ignore: must_be_immutable
class PragaRuin extends StatefulWidget {

  List m650 = [
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F0.jpg?alt=media&token=ac564e11-c995-43c7-af0a-e689c6930775',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F1.jpg?alt=media&token=1e8ddba4-e369-4cc8-b36a-819f4a56e502',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F2.jpg?alt=media&token=4b16bbdf-5d9d-46af-af68-f872774cb96c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F3.jpg?alt=media&token=a635aad3-f198-4a66-9e17-81d88aac6dd7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F4.jpg?alt=media&token=4465019c-a870-4fa6-986d-220a64cde84c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F5.jpg?alt=media&token=f0520f1c-2bfe-45f6-b403-5a39ca836cb0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F6.jpg?alt=media&token=dd45d637-a817-484c-95c4-5ee07a89abf5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F7.jpg?alt=media&token=a9e03adf-dff2-4abf-9442-6b464d8c879c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F8.jpg?alt=media&token=c4d1525d-3387-434f-91d4-cc7e6e376f44',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F9.jpg?alt=media&token=7aa0793c-6bbd-44a8-b87e-ac53765d1178',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F10.jpg?alt=media&token=7484c6bb-5b00-4122-b0ad-d98c164f1337',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F11.jpg?alt=media&token=48e179fb-57db-4eae-9c49-c9491e54f739',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F12.jpg?alt=media&token=235a7b0f-bc16-45af-8fc7-70380c123dcd',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F13.jpg?alt=media&token=d4e09fc7-c2e6-4551-89d6-33d72d3093ce',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F14.jpg?alt=media&token=a6575e36-f531-4531-80f1-0492a933cd9b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F15.jpg?alt=media&token=111ce1dc-98c7-49de-82dd-75fa39d29a65',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F16.jpg?alt=media&token=a0c7daff-e7bc-4f6e-94f2-75c41e219545',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F17.jpg?alt=media&token=59d97fef-6051-46fc-a1e9-96615a000019',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F18.jpg?alt=media&token=1ccbf2a4-327b-442d-9048-ac3d9aaaa409',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F19.jpg?alt=media&token=f58d20c4-06cc-42f7-b631-5a259d6f8db1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F20.jpg?alt=media&token=f9146787-bd32-407c-93b1-9db2d99422e5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F21.jpg?alt=media&token=0e439b09-ee8c-49fd-8eb4-b3076622bd87',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F23.jpg?alt=media&token=6ad108e3-0d7b-45b5-8efb-45760338de8a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F24.jpg?alt=media&token=cd1f22d1-2f30-4114-97bc-7def99b00ed3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F25.jpg?alt=media&token=1f6e8b43-b48d-44ee-bb19-2d06f64cd889',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F26.jpg?alt=media&token=d404b6e8-efe8-4815-a16e-69c471afa180',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F27.jpg?alt=media&token=197d4b5c-965a-44db-b584-3e3d1bde0cf8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F28.jpg?alt=media&token=4e727900-6ace-472f-ba4b-083efe0c2242',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F29.jpg?alt=media&token=e3b56bd0-2d35-46e5-a882-eee7e0bdee6a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F30.jpg?alt=media&token=4182a031-1a4b-4dc5-990d-f5a3c9de3c40',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F31.jpg?alt=media&token=a63bef58-271a-40ea-b7f8-6f3db59901e6',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F32.jpg?alt=media&token=3f5247e4-d98a-43da-bfc5-e47a9607cf15',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F33.jpg?alt=media&token=f24e6d31-8130-40a1-ba18-2cc16d8fe3ec',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F34.jpg?alt=media&token=1b609d99-aa2b-41c7-978c-15563f9c7d40',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F35.jpg?alt=media&token=b6c55a80-c7ff-49d7-a732-378827e8fc5d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F36.jpg?alt=media&token=4794222d-c622-49b9-aa11-0204c0f3c2f1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F37.jpg?alt=media&token=40f09fb2-c588-46c5-82ab-d1a6b9ff15f0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F38.jpg?alt=media&token=9703ec58-8a29-48d5-814c-0e84e2d05d47',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F39.jpg?alt=media&token=d72a8c40-4e13-490a-8803-9a8f2532c324',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F40.jpg?alt=media&token=02d3160b-ff9c-449a-8fe8-cd9132de443b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F41.jpg?alt=media&token=b934306b-4d5a-4a14-aae8-398ba6f5c9ed',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F42.jpg?alt=media&token=e18bf870-8375-4d18-92db-0c84e17a6541',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F43.jpg?alt=media&token=3d2f0d63-1e62-4d21-ae19-5e99f6fbb849',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F44.jpg?alt=media&token=48b62f6a-cdf9-4504-a165-9367bda5e401',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F45.jpg?alt=media&token=e1318caa-3789-49dd-86c6-9d9a960968e4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F46.jpg?alt=media&token=efd8bfa3-01cb-4256-bc18-f8f75247ae6a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F47.jpg?alt=media&token=12090803-31d5-4c50-aa61-4ca4798b1c6c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F48.jpg?alt=media&token=41111bc9-4207-485d-913a-4096692858b2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F49.jpg?alt=media&token=f9f23bd7-e0cd-4360-a06d-72259de756cd',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F50.jpg?alt=media&token=e7475d46-ae0d-4f9b-82c3-7d2f973383f2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F51.jpg?alt=media&token=5db9cbb7-fd40-4c96-ab69-af0ffd455e49',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F52.jpg?alt=media&token=0713844f-0830-4cc4-a331-bbcaada252ed',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F53.jpg?alt=media&token=a29d9909-c4cd-48a8-90be-664755f798db',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F54.jpg?alt=media&token=0f319dac-be41-4203-903b-49475e4f32a7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F55.jpg?alt=media&token=8f64d371-d0d1-4cab-ad13-17c556c8f21b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F56.jpg?alt=media&token=53d74d6d-1fd8-4fb1-a261-de17d39adf7d'
        'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F56.jpg?alt=media&token=53d74d6d-1fd8-4fb1-a261-de17d39adf7d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F57.jpg?alt=media&token=28204634-4467-4109-9eb4-38661d396ba6',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F58.jpg?alt=media&token=86a4a373-a619-4042-b8fb-abad6fa5ff59',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F59.jpg?alt=media&token=15d3334c-4530-4730-bc4f-b9330d7c6eca',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F60.jpg?alt=media&token=d51e8a55-3397-4964-88db-002884b42894',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F61.jpg?alt=media&token=240485cd-673d-45e2-a734-d632600f6bf3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F62.jpg?alt=media&token=a0d1a3d6-1df2-4f4e-aa2d-eec7ebe6cba2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F63.jpg?alt=media&token=fe1ae129-7b2a-4767-9eef-bdf26da3094b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F64.jpg?alt=media&token=64f1add7-db4c-4578-b6c1-f7ddacac4dcf',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F65.jpg?alt=media&token=31d26d38-1d79-48f2-b911-86dd908e8d92',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F66.jpg?alt=media&token=d69902bc-f90a-4701-b131-779e211af4d5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F67.jpg?alt=media&token=320f789f-0e5d-49f0-9eda-cc1593414a75',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F68.jpg?alt=media&token=ea6091dc-d6b4-4413-9c87-52c5994d331f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F69.jpg?alt=media&token=843f60c8-a109-4316-a27e-84d0559cda8c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F70.jpg?alt=media&token=90a8c224-5a07-4561-89ae-58998a836729',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F71.jpg?alt=media&token=7c9af6cd-6800-45a9-8525-caee92cce041',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F72.jpg?alt=media&token=885d2a96-c0df-4604-860f-6caaa5281673',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F73.jpg?alt=media&token=c22a788b-9480-44bb-ad42-b7c6ad22a6bd',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F74.jpg?alt=media&token=276e2dc5-1912-4aa1-a243-8d420d54b9b3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F75.jpg?alt=media&token=a10e9dd0-0115-4c65-ba6c-d931fde4dddb',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F76.jpg?alt=media&token=389de702-d85d-40ed-84a0-4233370dde3d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F77.jpg?alt=media&token=b7b73670-a956-4762-9bb2-247ac4c5a488',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F78.jpg?alt=media&token=20a46e37-c898-4f59-a3d8-db13dec65010',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F79.jpg?alt=media&token=7e36fe41-695a-416c-9da4-e6dcf3e3e735',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F80.jpg?alt=media&token=594067cb-9525-4dcc-9d97-ca7534a68e76',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F81.jpg?alt=media&token=b57870a9-63c8-4e9b-a946-1d18849b74e8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F82.jpg?alt=media&token=66502941-c8df-498d-b522-6b5abc83e763',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F83.jpg?alt=media&token=e87efa5f-fe26-47cd-8546-ff346f5661c4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F84.jpg?alt=media&token=46a88564-f884-430a-b6a5-fda77ab5e041',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F85.jpg?alt=media&token=1b024518-1800-4586-8350-65523b8d2820',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F86.jpg?alt=media&token=90aaf63d-74bc-4bf4-9cc9-0027eb3e2809',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F87.jpg?alt=media&token=81e4be66-8dfe-4c23-a08b-e2d7bfbaf172',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F92.jpg?alt=media&token=6234641e-8cca-452e-8950-cf7cc087199c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2F650%2F93.jpg?alt=media&token=a0347656-bd5b-4ff7-97b7-c01f3348453f',
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
          itemCount: widget.m650.length,
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
        index == 85 ||
        index == 92 
        ) {
return
Column(children: [
Divider(color: Colors.red,height: 20,),

 Bannerlargo(),


],);
    } else {    return Column(children: [

Divider(color: Colors.red,height: 20,),

          // ignore: deprecated_member_use
          FlatButton(
      color: Colors.white,
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => fotoZoon(
                      url: widget.m650[index],
                    )));
      },
      child: Image.network(
        widget.m650[index],
        fit: BoxFit.cover,
      ),
    )
    ],)
    
    
    
;}


  }
}
