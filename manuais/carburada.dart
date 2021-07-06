import 'package:admob_flutter/admob_flutter.dart';
import 'package:comunidadecomet/PE%C3%87AS/view/ZoonImage.dart';
import 'package:comunidadecomet/utilitarios/Admob_admob.dart';
import 'package:comunidadecomet/utilitarios/banner.dart';
import 'package:flutter/material.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';

class Carburada extends StatefulWidget {
  @override
  _CarburadaState createState() => _CarburadaState();
}

class _CarburadaState extends State<Carburada> {
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

  List testeC = [
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F0.jpg?alt=media&token=8308f38a-40ae-4cd3-aca2-0362c8ef4c45',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F1.jpg?alt=media&token=8d443e08-e60a-4f1f-9d18-8cf06802a8c4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3.jpg?alt=media&token=fd343b35-33e5-43aa-b1c6-a2a4ddfe203b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4.jpg?alt=media&token=c3928152-e689-4b6f-b30e-530165358a8b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5.jpg?alt=media&token=9d23d968-84be-42f8-8b12-a86859c65134',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6.jpg?alt=media&token=553b2897-8c89-4107-bde1-d55942ba9c67',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7.jpg?alt=media&token=aa6d58b2-793a-42db-9065-c71c27963e0c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F8.jpg?alt=media&token=5e7fb247-f526-45a9-99cd-86792fe3e180',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F9.jpg?alt=media&token=1e2087ae-cabb-4695-94a8-6b5c01d9d0de',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F10.jpg?alt=media&token=cdafebdb-8c99-4941-a82a-1c57a013c00e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F11.jpg?alt=media&token=6324b198-88de-4145-a336-86d9cc1f4093',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F12.jpg?alt=media&token=d7d0ec65-52c4-4f75-9aba-e2505176f9ef',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F13.jpg?alt=media&token=33cfbcde-8711-4165-a21d-0e6070415a8b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F14.jpg?alt=media&token=13d6e489-8dc6-4a93-8207-c3ebd40e03cf',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F15.jpg?alt=media&token=d88084dd-0f61-4f1d-bbbe-42e529c4b002',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F16.jpg?alt=media&token=13856827-1a4d-43bf-acc5-205a6a5cc6c0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F17.jpg?alt=media&token=01e3c3fb-4188-4c10-b9f7-5cbed2609213',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F19.jpg?alt=media&token=a36caab5-b015-4f31-aec6-c9c78c99bd72',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F20.jpg?alt=media&token=921cdda3-b692-4c5c-9d1a-b3e04066acde',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F21.jpg?alt=media&token=d18bf5f1-e4c4-47d3-920d-6a959686505e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F22.jpg?alt=media&token=7e7a82bd-8f68-4a1b-bda0-1a2b9321532b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F23.jpg?alt=media&token=e536cc99-a14e-4c1b-878e-d3b0001f3dcb',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F24.jpg?alt=media&token=e4dfa642-dc78-41c2-9964-401474d489c9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F25.jpg?alt=media&token=c64c93e3-f641-435d-a000-65866646e370',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F26.jpg?alt=media&token=6e3067d5-3b1b-4de8-81a5-2d31cdcfe51c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F27.jpg?alt=media&token=f9cddcd5-1a2d-4890-80f8-80dc244649f7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F28.jpg?alt=media&token=62b4be02-b056-4f2c-9dc8-608f67bb67b5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F29.jpg?alt=media&token=8f8484e7-1743-4c8b-a290-a80f977dae97',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F30.jpg?alt=media&token=90a71c2b-806f-4a08-8c0d-ccb651d54700',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F31.jpg?alt=media&token=81eb334c-7c81-44f8-b15f-9a24c469627f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F32.jpg?alt=media&token=789f2c0a-2c13-4bd9-9662-e53fedc9336b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F33.jpg?alt=media&token=bbedab0b-e9c8-4061-a7f3-d5cea7c644f5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F34.jpg?alt=media&token=bdcc001e-ea78-4609-befa-1012707267d3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F35.jpg?alt=media&token=47499612-66b0-45e9-9ca8-67f4b2664e41',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F36.jpg?alt=media&token=c4adfb80-51c9-4d92-9374-41b57513098d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F37.jpg?alt=media&token=4d10725e-0e9c-458b-9fee-e7bdb89e6201',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F38.jpg?alt=media&token=714691ef-ce47-41f9-8999-e1599dc357bb',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F39.jpg?alt=media&token=d0940f88-a9fd-4b54-816f-b69157314157',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F40.jpg?alt=media&token=a1a5c64e-57a3-4359-829f-526bdf37c65b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F2%2F41.jpg?alt=media&token=7a692936-8510-4cbc-b244-ca82ccbc91d0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F42.jpg?alt=media&token=bc05f0dd-0802-4148-826c-af03690a2372',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F43.jpg?alt=media&token=95e9f933-ac59-4213-8a3e-aac07f2a7a64',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F44.jpg?alt=media&token=d539ddee-a29c-4bb7-abb9-df66bcae7a5c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F45.jpg?alt=media&token=2e3276e9-b1bd-49b3-ba44-6d09bace4963',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F46.jpg?alt=media&token=76e2fbdd-4946-405c-ad6c-36d85a069f51',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F47.jpg?alt=media&token=e4b6126b-acad-4f49-8571-594b1d9f2d10',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F48.jpg?alt=media&token=9dd51d57-0dd4-481d-81aa-9acf53d44ce1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F49.jpg?alt=media&token=842a8b73-d48f-44ff-9a24-9594d1ec698d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F50.jpg?alt=media&token=8b7d2f24-cdbb-4f81-b451-b2569a923240',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F50.jpg?alt=media&token=8b7d2f24-cdbb-4f81-b451-b2569a923240',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F51.jpg?alt=media&token=08f1b717-95ae-46b6-bebf-562528528dd4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F52.jpg?alt=media&token=29e5571d-17e2-42ae-8d64-ac5caa3c9ce7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F53.jpg?alt=media&token=4cf0f1a1-af03-43f6-84ae-16dec4db9524',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F54.jpg?alt=media&token=b6e9cf41-7af8-4066-8f23-83396b91c3b4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F55.jpg?alt=media&token=50287c3e-a46a-4305-bb02-f87cd972ee5f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F56.jpg?alt=media&token=d0bb5fd3-c9db-4fb1-bee9-b27d118c2950',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F57.jpg?alt=media&token=312940b9-b8e5-433f-a346-0c6ce29821c8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F58.jpg?alt=media&token=e257ac4b-1ac2-4985-8d3f-34bd945054ed',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F59.jpg?alt=media&token=a6fedaf0-1c60-4846-9d41-c88258b27232',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F60.jpg?alt=media&token=fafdefe2-7301-4ed9-b6df-969cfbd66e4e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F3%2F61.jpg?alt=media&token=3d998bf5-59ae-4ac8-a748-0ebcf445322a'
        'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F62.jpg?alt=media&token=16d7593c-eacd-49f7-9f28-ee48d8e64354',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F63.jpg?alt=media&token=39f74c97-70a8-4e6b-8ad1-6d10e8d77060',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F64.jpg?alt=media&token=7935a141-515d-4788-ac9e-d4f072f7a2e0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F65.jpg?alt=media&token=de1ac086-9674-45ca-bddc-c4235925ad0c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F66.jpg?alt=media&token=296bc84a-e951-48d5-b374-823440d3e29f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F67.jpg?alt=media&token=12d4cd95-6982-450c-b2be-067b084a42a7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F68.jpg?alt=media&token=7b232747-db71-4c9c-ab87-efe04c7c2f2f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F69.jpg?alt=media&token=da286881-538f-4e59-a923-e1d9b605ea16',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F70.jpg?alt=media&token=8e449a65-0294-45a9-9cd8-9c48f2466a4b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F71.jpg?alt=media&token=4febf690-80ec-4ff1-9bcf-2a8af9b3cad8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F72.jpg?alt=media&token=97e333c5-10c2-43cf-9efb-a422816f2de4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F73.jpg?alt=media&token=bfcb2c7e-0c6a-4098-9b3f-d6d2c9ddd5f5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F74.jpg?alt=media&token=e6373bf2-ccf7-4a13-86bc-9c2f6728120c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F75.jpg?alt=media&token=34581f63-3260-4ed7-a93d-d2e85233e389',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F76.jpg?alt=media&token=8158d23d-5a0b-47d2-9f8d-aeb75040099b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F77.jpg?alt=media&token=f5d5dd4a-2f6f-4fbf-b980-53b23dd6fee6',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F78.jpg?alt=media&token=8daefa25-b0ef-4a6f-9462-6e37e8979f2b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F79.jpg?alt=media&token=c22dd0d5-c268-4bc5-a76e-cebe949837c2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F80.jpg?alt=media&token=0649a302-652e-4a40-ad1e-41148e366ee6',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F81.jpg?alt=media&token=03709040-bc02-4695-b6d9-6f774c22d35a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F82.jpg?alt=media&token=3808e7d2-f0b0-40d7-be93-6a887601b4ff',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F83.jpg?alt=media&token=e3d637ed-a233-41e2-970c-687cb2cc4480',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F84.jpg?alt=media&token=b4623a00-012a-4abe-96dc-029c7dc4d7d2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F85.jpg?alt=media&token=30df27a2-4414-475b-bf72-ba3a6f21af7e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F86.jpg?alt=media&token=06f0be63-af40-4133-a496-9f6718c240e0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F87.jpg?alt=media&token=d8fc333b-a5f4-4d6a-9751-5ff4436521d7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F88.jpg?alt=media&token=88f6469c-161e-42d9-9eda-6a2111b7569b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F89.jpg?alt=media&token=aa42ba0b-c0b3-49d9-b99b-772dfa95068d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F4%2F90.jpg?alt=media&token=da7328d0-da40-4ea9-9a1b-f940326c5590',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F91.jpg?alt=media&token=b273630d-c105-4863-a3fc-82f4995de95e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F92.jpg?alt=media&token=b66cb3bc-cb21-46f4-97e2-beee2c7e0bbe',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F93.jpg?alt=media&token=3071fca2-3ab5-43d1-bd4f-3f8f2d6a3af3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F94.jpg?alt=media&token=a9022f47-9923-4799-8281-0e59ffef1e54',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F95.jpg?alt=media&token=1fd83fa2-e4a9-4cac-8888-0b2b238562e3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F96.jpg?alt=media&token=d1e3329b-16d8-4187-af42-2dc706238c37',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F97.jpg?alt=media&token=d55052c3-34e0-48ac-91c6-6447739974d3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F98.jpg?alt=media&token=c62d571a-b85b-4879-b22f-8a59d4602e81',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F99.jpg?alt=media&token=3966f787-9e97-4ec0-8c61-7f0642eee94a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F100.jpg?alt=media&token=dd8e3d6a-e807-402a-a4b6-6f6848e83790',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F101.jpg?alt=media&token=5bbe5de4-57f9-4ac9-b236-022cc37e6468',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F102.jpg?alt=media&token=c27462c6-5740-4b7a-8ca4-860dc5b50269',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F103.jpg?alt=media&token=1dc4fb82-2de6-431e-8f16-46aadddb463e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F104.jpg?alt=media&token=3de96567-c4aa-470a-8f7a-e8d8003d8c66',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F105.jpg?alt=media&token=34c7cf64-e2f4-4457-bc26-269a8842f7a4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F106.jpg?alt=media&token=d20cca4b-a156-4fa7-9123-ffa97e518d4c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F107.jpg?alt=media&token=20e6277d-8224-458f-b0f0-1582e4f9447d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F108.jpg?alt=media&token=76c1cde3-25b6-4ebb-8525-07fe2616c35c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F109.jpg?alt=media&token=abba46c0-d9dc-4a8e-b919-6fe187ef7bf2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F110.jpg?alt=media&token=00c595dc-38c0-4956-83e9-474904a6694d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F111.jpg?alt=media&token=51e80e0c-ff0f-42fd-bb79-170454b3b3a5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F112.jpg?alt=media&token=e4490009-e108-4bac-b1af-ff82ac644764',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F113.jpg?alt=media&token=c4036a0e-df9e-4b71-b03d-eda13874fd7c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F114.jpg?alt=media&token=8da3413b-e637-435f-b28f-327c91b34e39',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F115.jpg?alt=media&token=501baaf0-5341-42ab-82e2-6f51e0bfe991',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F116.jpg?alt=media&token=9b3530ff-26aa-46a8-8375-5ab013d90040',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F117.jpg?alt=media&token=78d6f12a-b6c1-460a-b41c-5f68364bee05',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F118.jpg?alt=media&token=6972f95b-b3c7-4807-8f93-3936258344e6',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F119.jpg?alt=media&token=40bd4618-083a-45be-9ee2-421757dba5ce',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F120.jpg?alt=media&token=c0c8c9cf-68c1-4c64-94ac-e0ab5c1cf044',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F121.jpg?alt=media&token=56bd3101-4715-4a6d-a6b6-335171941c06',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F122.jpg?alt=media&token=085201c7-59b5-480e-ac97-581d7dfa58bf',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F123.jpg?alt=media&token=2375fd51-cc6e-45e4-ae66-8ec8ead367d8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F124.jpg?alt=media&token=9513f928-6b7b-406c-a53a-6db5f3a44b86',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F125.jpg?alt=media&token=97dc55f9-1f29-4ec4-9c34-c05b830a57ca',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F126.jpg?alt=media&token=b4d6ae1d-b34e-400c-9c83-60977cd31b0c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F127.jpg?alt=media&token=dd8833d7-fa81-4673-b56d-ed26c452a1ce',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F128.jpg?alt=media&token=e5331a4b-7077-4220-b951-cd2b6b8faeb4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F129.jpg?alt=media&token=5c429402-ef4a-432d-b594-3496309f56a8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F5%2F130.jpg?alt=media&token=16d16d28-30ae-4323-9ebf-578b1415d57d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F131.jpg?alt=media&token=cf503186-14af-4e89-b8b5-ad29191a79ed',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F132.jpg?alt=media&token=d42ed422-5200-4166-8521-fb54621106c6',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F133.jpg?alt=media&token=897cc70f-1b1b-4e72-89f6-2e2de6ea5c7a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F134.jpg?alt=media&token=95e30d49-7aa6-41cb-80ab-faf9ac496cf9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F135.jpg?alt=media&token=6c2b7af6-a859-4710-81b2-18a2051f6557',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F136.jpg?alt=media&token=636a788e-8cf0-4c5f-94b2-566f9a7d3f3f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F137.jpg?alt=media&token=b268f216-6c06-4549-b73c-eec7bd28b718',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F138.jpg?alt=media&token=aa8fa248-8e96-43fa-ad5d-d4aca8a8dc54',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F139.jpg?alt=media&token=6584232b-d63e-42c0-98d3-555aac0fe35d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F140.jpg?alt=media&token=fd258f6d-330b-4bd7-99a4-add47200fb79',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F141.jpg?alt=media&token=5d1af75c-9608-46a5-80dd-e62868f1d661',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F142.jpg?alt=media&token=233c3a76-8724-4ee8-9736-58fd55f91cc4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F143.jpg?alt=media&token=7529e0eb-6dd1-47a8-94d2-fee3968e3c37',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F144.jpg?alt=media&token=55565ca7-ae0c-4886-bd30-014d5e4e2b95',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F145.jpg?alt=media&token=3385673f-720e-4860-900f-1e58f0e4b4df',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F146.jpg?alt=media&token=41181397-ba89-441b-8379-f2df2e2fca58',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F147.jpg?alt=media&token=ec10da08-2397-4f00-b279-40d880993cd8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F148.jpg?alt=media&token=695fd807-a6dc-488c-b2e5-cadb1c894d81',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F149.jpg?alt=media&token=07a8b3a4-8eea-436e-a9b6-70602674bfc2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F150.jpg?alt=media&token=bbff031c-7bf0-4e35-8b5a-a444060dbf67',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F151.jpg?alt=media&token=06948a72-ea3c-495a-b5b9-b0e6758924a4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F152.jpg?alt=media&token=190c1f6a-6318-408f-aa90-7dcf9c68144f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F153.jpg?alt=media&token=52bfb8ca-1719-4d7c-8912-4746ccad2fd8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F154.jpg?alt=media&token=24aa905b-7357-4804-bef5-22c0a7f9e3cf',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F155.jpg?alt=media&token=421854f7-abb7-4800-8a20-8a5c878c91b0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F156.jpg?alt=media&token=0db2655a-0613-4d56-9c6f-704980823152',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F157.jpg?alt=media&token=5bbb3161-abde-4739-9639-8fb56eaff8d7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F158.jpg?alt=media&token=714917cf-57d4-45c7-b399-f334da461d97',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F159.jpg?alt=media&token=2196c3b1-263a-4b4f-a89c-9bdaa0312200',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F6%2F160.jpg?alt=media&token=cd1f4325-0eb8-47fa-ade7-007f97b5e00f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F161.jpg?alt=media&token=c5d1a78c-d495-4b52-ac41-587a29bc046f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F162.jpg?alt=media&token=878faa21-40f4-4b40-9917-55fab8bbc9a3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F163.jpg?alt=media&token=1ff25aa6-0683-4f84-a09a-29d76de34a9b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F164.jpg?alt=media&token=faf84aa3-e193-427f-99b5-0c7edae6c95e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F165.jpg?alt=media&token=1f751dc3-3d0e-4e7a-b238-5c2467c99033',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F166.jpg?alt=media&token=23c09a7f-bb32-4e6f-b292-c261295e0242',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F167.jpg?alt=media&token=75021cdb-9acf-4dcf-9e88-f081d8a4b335',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F168.jpg?alt=media&token=826c5a81-2685-4949-9fac-75b4bf5ee6bd',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F169.jpg?alt=media&token=4a506603-4a28-495d-9734-80fe7deeb153',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F170.jpg?alt=media&token=7dd0c227-2fc9-4ae6-aacc-324c5eadb6c6',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F171.jpg?alt=media&token=1c61e49f-158d-4281-9258-d151ebe948f1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F172.jpg?alt=media&token=1bfb38a4-32b1-4377-862f-1b9dfe8c6bb9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F173.jpg?alt=media&token=12fd70ec-700b-4b38-8ab5-b74c28cfe13d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F174.jpg?alt=media&token=6e8e42f8-33ed-419f-bee8-d60b4c572f90',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F175.jpg?alt=media&token=ba030fc7-dc69-4021-8339-2b8c621a7776',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F176.jpg?alt=media&token=0036fb99-2bbc-4790-85a2-d19b65e9a96d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F177.jpg?alt=media&token=c7a40922-c6ab-4ae9-96a3-4701ce4600a1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F178.jpg?alt=media&token=3f794858-9138-4a65-b8ca-e207697b81ba',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F179.jpg?alt=media&token=3d7ad784-7eb7-422d-8c55-0d4f1f97854f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F180.jpg?alt=media&token=480e6572-b423-46c5-8c96-ec19706e8704',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F181.jpg?alt=media&token=829e608c-b07e-4928-a11e-3e50489b22b9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F182.jpg?alt=media&token=b33b63ec-f017-49cc-baed-537189a597ea',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F183.jpg?alt=media&token=ea01b783-f7f2-4e98-9854-f4aa63ca00d2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F184.jpg?alt=media&token=712b81eb-ed8a-4d87-92ca-8cbf209810d7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F185.jpg?alt=media&token=68e74315-f988-4a7c-915e-7669c8da3465',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F186.jpg?alt=media&token=fb2dcff2-5d40-413f-a28d-1faf3d80518a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F187.jpg?alt=media&token=4d43e663-1b1b-4205-9cad-068c5acf718e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F188.jpg?alt=media&token=bd26eee2-f690-432e-82b8-8626e2d54474',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F189.jpg?alt=media&token=94764467-775c-4e30-bc0e-2a717f25ac9d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F190.jpg?alt=media&token=d8f6fae4-656c-4478-bb2d-d74c87de954f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F191.jpg?alt=media&token=ae1344f8-244f-4722-b4ed-5a55f7a8d04a',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F192.jpg?alt=media&token=74f0f8cd-aeae-488e-9c0c-830f5b9693a0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F193.jpg?alt=media&token=ee2f36e7-68c1-44df-a919-89b9f5c06768',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F194.jpg?alt=media&token=18088bd0-3474-4206-b2bf-0dfd7b8a7921',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F195.jpg?alt=media&token=4a1bb919-29f3-468a-bee1-b8508ee72508',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F196.jpg?alt=media&token=a19993f0-177d-4903-aa2d-8082c458d50d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F197.jpg?alt=media&token=bca2053e-8de1-44ec-a5f6-0f99a105acb4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fcarburada%2F7%2F198.jpg?alt=media&token=0744935a-d16d-4e32-89f5-50c603d0d2c4',
  ];

  @override
  _PragaRuinState createState() => _PragaRuinState();
}

class _PragaRuinState extends State<PragaRuin> {
  @override
  Widget build(BuildContext context) {
    return GestureZoomBox(
        doubleTapScale: 2.0,
        duration: Duration(milliseconds: 150),
        child: ListView.builder(
          itemBuilder: _buildPragaRuinItem,
          itemCount: widget.testeC.length,
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
        index == 90 ||
        index == 130 ||
        index == 160 ||
        index == 190 
 
        ) {
      return BannerQuadrado();
    } else {
      return Column(
        children: [
          Divider(
            height: 20,
            color: Colors.red,
          ),
          FlatButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => fotoZoon(url: widget.testeC[index])));
              },
              child: Container(
                child: Image.network(
                  widget.testeC[index],
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
              ))
        ],
      );
    }
  }
}
