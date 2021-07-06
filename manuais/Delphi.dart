import 'package:admob_flutter/admob_flutter.dart';
import 'package:comunidadecomet/utilitarios/Admob_admob.dart';
import 'package:comunidadecomet/utilitarios/banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';

class Delphi extends StatefulWidget {
  @override
  _DelphiState createState() => _DelphiState();
}

class _DelphiState extends State<Delphi> {
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

      ),
    );
  }
}

// ignore: must_be_immutable
class PragaRuin extends StatefulWidget {
 // var _manualC = List<String>.generate(114, (index) => 'Delphi/');
  List delphi = [
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F0.jpg?alt=media&token=72422050-5d52-42e3-82c9-a9e42be27072',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1.jpg?alt=media&token=45f05a02-c25f-4664-87da-2be7803c0ec4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2.jpg?alt=media&token=8caf172e-344b-4923-9134-3317a1dc5df5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3.jpg?alt=media&token=26535cbf-f974-4f95-828b-aed6ad7db3ed',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F4.jpg?alt=media&token=b1f3ad26-99da-4cb1-b49e-3b030cc76b25',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F5.jpg?alt=media&token=503a5e03-3fd3-4b2c-9444-bc79e6cbcbd2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F6.jpg?alt=media&token=407242e0-f013-42f5-9038-bd2efb393232',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F7.jpg?alt=media&token=98b41ade-a6a2-49ee-b8d1-b49bfb501b5b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F8.jpg?alt=media&token=c01c3d4f-51f4-443d-b7c1-5d915f1a4298',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F9.jpg?alt=media&token=c395d1cc-a4c9-47fe-b53b-dd84456fe370',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F10.jpg?alt=media&token=b51c86fb-4d5e-42e7-9a25-bee4cc17897a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F11.jpg?alt=media&token=25935e06-98fe-49a4-8b0b-1711a1b259c2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F12.jpg?alt=media&token=6d4574e6-6e38-4ea2-a439-eff2dfc69a1b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F13.jpg?alt=media&token=f2333a61-2b10-41b6-9d74-25dcbbdf6300',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F14.jpg?alt=media&token=44650fc1-840b-4cad-9ec2-6887d6225a91',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F15.jpg?alt=media&token=149d1a17-e5b1-464e-be14-405c8d89f5b1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F16.jpg?alt=media&token=c4570237-ce9f-46e9-aab5-226983a09fec',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F17.jpg?alt=media&token=e99e2a2b-d809-4590-8142-42d41f491554',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F18.jpg?alt=media&token=b6d61006-c623-45a0-83d7-a4abe3ba308e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F19.jpg?alt=media&token=ef6108c8-806a-4a77-8f7c-b5ceffb1acf9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F20.jpg?alt=media&token=52527028-889d-40d2-b922-21c50a6a64e2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F21.jpg?alt=media&token=b3293b03-ae71-4e56-b4af-73418f5c42d1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F22.jpg?alt=media&token=157973e7-bf3a-477b-9c6b-2339abb14066',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F23.jpg?alt=media&token=12d66352-9cfd-4c45-8029-ea0037d7e5e7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F24.jpg?alt=media&token=4a51e9bf-f190-403c-854d-853150dd6c4a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F25.jpg?alt=media&token=2f7362b2-9818-4e86-8ad7-6715fee00dd3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F25.jpg?alt=media&token=2f7362b2-9818-4e86-8ad7-6715fee00dd3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F27.jpg?alt=media&token=4f1ef560-2735-437f-8876-6d266c849803',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F28.jpg?alt=media&token=fa24c968-b9e6-42ba-ac42-9b94f1f47119',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F29.jpg?alt=media&token=f6087ea6-638e-4c97-b094-1082b72b658c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F30.jpg?alt=media&token=8cb7e75c-07aa-425d-a757-71b401d70b1c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F31.jpg?alt=media&token=cdd0cdee-0552-4f76-90b2-632a4b31a7b5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F32.jpg?alt=media&token=26214e7d-4243-4ec1-9f04-a94872bb2cf4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F33.jpg?alt=media&token=44e346b5-a183-4f47-a2ab-0f9cef1f7aa9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F34.jpg?alt=media&token=b9b54369-af0a-4872-bd7c-1cc2ae263d58',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F35.jpg?alt=media&token=5669a1ec-6caa-433f-8025-8784815c1ccc',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F36.jpg?alt=media&token=9b103721-9692-4abe-9204-c29b8becacc5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F37.jpg?alt=media&token=d2602db1-9b7c-4fdc-8916-fad9da28470a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F38.jpg?alt=media&token=efd9c46a-9c4d-462a-aced-1f9f1307f2fb',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F39.jpg?alt=media&token=887ba97f-e85c-4b84-8954-0810e1fd6130',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F40.jpg?alt=media&token=9acd1ba8-1968-42de-8a05-c3254ef66229',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F41.jpg?alt=media&token=ddf5785f-f75e-4532-afd6-8d32215d7066',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F42.jpg?alt=media&token=e29d5118-ba01-4b4a-a939-91fd1a5aeb6f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F43.jpg?alt=media&token=fb5d78e1-e0d3-42ac-918e-6857e5a2f3ff',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F44.jpg?alt=media&token=49476d62-34f3-42be-ace7-d9497e49db77',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F45.jpg?alt=media&token=16cfe222-7ee4-4d4a-b5cc-f3857ab7ecbf',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F46.jpg?alt=media&token=9fcd6cfa-c89a-409f-adc0-fe328e7acbe2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F47.jpg?alt=media&token=dd072b55-3664-4d26-a025-00b83c41898d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F48.jpg?alt=media&token=9019c9c7-829a-4303-bc9a-b43da8f6012a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F49.jpg?alt=media&token=c6a20783-d154-4dfe-888f-f98f74cddf93',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F1%2F50.jpg?alt=media&token=b05c73e6-1495-4cfe-bf3b-c03be697876e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F51.jpg?alt=media&token=7c5d2501-4fa2-4059-bee8-2248f1d9675d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F53.jpg?alt=media&token=8a6b6e6f-9500-4b8a-a1d3-a4e034189fde',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F54.jpg?alt=media&token=5f33c4c0-60ab-409a-aade-6d64cf8cf049',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F55.jpg?alt=media&token=50aa2231-edec-4039-855e-d612fd547ae7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F56.jpg?alt=media&token=28fa2cc2-368d-490d-b904-eac7c1c938ec',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F57.jpg?alt=media&token=f383e567-77da-4406-bef4-364efba4002b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F58.jpg?alt=media&token=47fc2d72-71a4-4267-8c53-3f2f6dc01a93',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F59.jpg?alt=media&token=e7029256-9d77-4599-89a4-1315a3d49da3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F60.jpg?alt=media&token=b4947364-5780-4415-80d0-64aea2a62033',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F61.jpg?alt=media&token=0814c83e-b6e5-43c1-ba1d-d239d9240a67',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F62.jpg?alt=media&token=cfb13bd9-9d1e-4c14-b624-167241f6bad4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F63.jpg?alt=media&token=d39aecb1-75c7-461d-85e1-d1d955ea6d0b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F64.jpg?alt=media&token=f977a2a4-ad97-4608-a9ac-68b38b06622c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F65.jpg?alt=media&token=4fb4f383-6f99-4b22-aa97-6883e14fe812',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F66.jpg?alt=media&token=6b3dace0-b8d4-4692-87f5-9253aaf5d67b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F67.jpg?alt=media&token=d1cf5876-6873-4a46-88a5-17c3c2933cd0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F68.jpg?alt=media&token=245d9c6a-1a66-4450-ab8e-a66e09a16d4c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F69.jpg?alt=media&token=6d7d7c21-5f03-4044-bda2-631da1b0d3c9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F70.jpg?alt=media&token=25882eb1-27c0-4a1f-856a-2138ef37c1b3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F71.jpg?alt=media&token=36a98a0d-5a6f-4557-b173-eb6940319f34',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F72.jpg?alt=media&token=f35aa661-eed6-4afa-9c8e-ca834a9c8fac',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F73.jpg?alt=media&token=26066945-0449-45a9-bd13-136b01508daf',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F74.jpg?alt=media&token=03443827-09a6-4555-8530-a15eb8a6074a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F75.jpg?alt=media&token=aee1175f-7b0e-4715-ba1e-6594896e1ebd',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F76.jpg?alt=media&token=c1d3f66e-dad7-415f-a100-3f72f5aa066c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F77.jpg?alt=media&token=0ce3767e-3648-495a-b7e1-22c484ab4d13',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F78.jpg?alt=media&token=4c4f8ef1-a075-4136-995d-708fda8a00b2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F69.jpg?alt=media&token=6d7d7c21-5f03-4044-bda2-631da1b0d3c9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F80.jpg?alt=media&token=0271c8ce-c422-4d9c-84e7-2d61338662d1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F81.jpg?alt=media&token=7eeba224-0dc2-48cf-8f9a-06fadcf5a22e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F82.jpg?alt=media&token=4bb5a01a-fae0-4739-8ecf-54ec1ba16c92',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F83.jpg?alt=media&token=1db4e379-0eed-4903-b8eb-c063fadab5cc',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F84.jpg?alt=media&token=d3a572f5-f82d-4571-b440-cc9bab9d3667',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F2%2F85.jpg?alt=media&token=5d42282b-f9a5-459d-9ae6-79246c0964ef',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F86.jpg?alt=media&token=6b54c8e1-10d5-43ab-b2bf-7771e4fd5135',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F87.jpg?alt=media&token=6441bc0a-58b5-4a14-a724-997382d5316a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F88.jpg?alt=media&token=17167d3c-2ed7-4793-96b6-08d9be4cf49b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F89.jpg?alt=media&token=17810583-0e7b-4bbc-9baa-cd0f29fa0560',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F90.jpg?alt=media&token=a516497a-b678-4885-a4f7-e174954a3540',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F91.jpg?alt=media&token=7a39011b-187a-429e-a65e-9f79bd6f6ab5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F92.jpg?alt=media&token=87a7c9ed-1527-4d1e-8ef4-08adf51b368c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F93.jpg?alt=media&token=d2364472-15aa-4dbc-9f8e-ccd3b48bf5c5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F94.jpg?alt=media&token=244666f2-6f63-46a6-9260-75b482ebab0f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F95.jpg?alt=media&token=20f9495b-5e4c-4672-917f-a648cc7b779b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F96.jpg?alt=media&token=3b8af445-a5a1-4144-95bd-28179a20903b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F97.jpg?alt=media&token=d9fadc2e-d663-4517-b614-eeac3910b397',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F98.jpg?alt=media&token=f683c8c9-3b7a-42e1-87a8-d95c2505589f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F99.jpg?alt=media&token=c6e29967-68f8-40cd-a5a8-f8464ff07d5a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F100.jpg?alt=media&token=28172df8-be45-49d8-82e5-c1ec897105a3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F101.jpg?alt=media&token=2c9451bc-fdd8-4658-9a13-ef90d2f5f0b1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F102.jpg?alt=media&token=90f85d15-c88d-4e8f-80bf-89b22318d0ff',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F102.jpg?alt=media&token=90f85d15-c88d-4e8f-80bf-89b22318d0ff',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F104.jpg?alt=media&token=24bbc6ff-a89c-458c-9ac6-67c10b9db33f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F105.jpg?alt=media&token=effe80ee-6c2a-44aa-bc0b-09b48a961a50',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F106.jpg?alt=media&token=9e229210-55b4-4023-a15a-4689b14a30ab',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F107.jpg?alt=media&token=751884f3-9afb-4a41-8e06-4a15970486f2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F108.jpg?alt=media&token=7d9363cb-78f2-4793-be9f-3fff19c49d70',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F109.jpg?alt=media&token=99b6a626-6e3d-46ed-82a8-4fc6c20c238c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F110.jpg?alt=media&token=18dadd80-5b41-4549-8e4a-60a919db3d21',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F111.jpg?alt=media&token=d00ac22f-c8b8-428e-9979-79bfab2e0b20',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F112.jpg?alt=media&token=2ab4bf17-ea3e-47e2-8958-78cf5426f387',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fdelph%2F3%2F113.jpg?alt=media&token=a9cca736-9e6b-49fc-81ba-52e844cf22c3',
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
          itemCount: widget.delphi.length,
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
        index == 85||
        index == 100||
        index == 112
 ) {
      return Column(
        children: [
  Divider(
              color: Colors.red,
              height: 20,
            ),

       Bannerlargo(),
        ],
      );
    } else {
      return
         Column(
          children: <Widget>[
            Divider(
              color: Colors.red,
              height: 20,
            ),
            Image.network(
              widget.delphi[index],
              fit: BoxFit.cover,
            ),
          ],
        );

    }
  }
}
