import 'package:admob_flutter/admob_flutter.dart';
import 'package:comunidadecomet/utilitarios/Admob_admob.dart';
import 'package:comunidadecomet/utilitarios/banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Efi extends StatefulWidget {
  @override
  _EfiState createState() => _EfiState();
}

class _EfiState extends State<Efi> {
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
  List efi = [
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F0.jpg?alt=media&token=b542db78-9b8a-482f-9261-681602dfc0fd',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1.jpg?alt=media&token=67ab7291-0e20-42a6-8de7-3f475caf229e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2.jpg?alt=media&token=b2b0141c-beae-40a7-8b2c-22925bebcab7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F3.jpg?alt=media&token=77d4beea-5ad5-4fca-a3cc-4219458caa06',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F4.jpg?alt=media&token=dead4f85-b361-43cd-a432-c43ec49705e7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F5.jpg?alt=media&token=b7ee3572-3b9e-47db-a22a-2ffea033d26d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F6.jpg?alt=media&token=48829cc3-c0e1-4fa7-9c27-c3dcf1948191',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F7.jpg?alt=media&token=cfb1f4bd-27e3-4b70-ae76-02f6d3bc4ec4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F8.jpg?alt=media&token=3d91977c-acf1-4a62-ac0b-49959f7781d9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F9.jpg?alt=media&token=a8faf9aa-d73a-48b0-bf9d-e33b422cdce3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F10.jpg?alt=media&token=effbc59f-7503-454c-b093-0de2b362baba',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F11.jpg?alt=media&token=cc02a1dc-6b1f-4fce-adbc-dc883523e2d1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F12.jpg?alt=media&token=e6cb7d1f-ff74-448f-af29-4a65cee3c1d9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F13.jpg?alt=media&token=c979aa36-d552-4fba-a9b6-3196b1a3fa74',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F15.jpg?alt=media&token=638d66b1-ebcc-4731-b411-df39c654a155',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F16.jpg?alt=media&token=c9732c3f-3b36-4dd1-a6fd-bf59c88deae6',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F17.jpg?alt=media&token=84bfbea1-16bc-4b6d-807d-bae8ecc4e290',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F18.jpg?alt=media&token=3dcb12a2-9837-473a-b436-01263fbe00df',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F19.jpg?alt=media&token=f6c9b38b-eed7-4bcd-b539-565789208f41',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F20.jpg?alt=media&token=ad4d1715-c2bd-46d2-b1f8-1e1ffc4ff2cf',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F21.jpg?alt=media&token=f966aac9-fabe-4d34-a68b-3a2bcdde7801',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F22.jpg?alt=media&token=04c2aae2-35ac-472c-864a-698178eedbe3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F23.jpg?alt=media&token=8c162ae4-52c1-47c1-90e7-6cbad38d0505',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F24.jpg?alt=media&token=1dfa6892-1b02-43ed-844f-58fc597f0735',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F25.jpg?alt=media&token=b77461d1-88a8-45c7-babd-64cd084d887b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F26.jpg?alt=media&token=2707a7a8-9fd7-4d15-af92-3df915af50ed',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F27.jpg?alt=media&token=00559820-3b86-4c43-ba79-af0f8c35a5b5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F28.jpg?alt=media&token=b9dd5f1b-e59a-4554-b5ab-8f85f914835e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F29.jpg?alt=media&token=a101ed73-886d-4ee7-9724-1b0c66d779e1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F30.jpg?alt=media&token=bc1c4888-f91f-4521-9999-665b3f6592d1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F31.jpg?alt=media&token=14622699-687f-4499-a992-0ea614632dc9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F32.jpg?alt=media&token=9a34033e-6167-41d6-bfa2-10612d410bbb',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F33.jpg?alt=media&token=f770d669-d494-4a3a-ad53-7f8268184357',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F34.jpg?alt=media&token=f6f7754b-4b52-4c5c-be02-7c94d33af1d8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F35.jpg?alt=media&token=c747f75c-9918-44f8-9302-9a5da34a45cf',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F36.jpg?alt=media&token=215a01df-14ee-4501-8a51-5bc712cc2980',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F37.jpg?alt=media&token=02141327-31e5-47de-b64d-610ac5e74dc5',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F38.jpg?alt=media&token=713a5bb8-bae3-43dd-bfa5-6591b9845d98',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F39.jpg?alt=media&token=9ac789bb-9e31-4223-9c6b-2ef25c03fabe',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F40.jpg?alt=media&token=52b74c78-7e38-479b-934e-f60cd27f723e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F41.jpg?alt=media&token=5e640a45-1aa7-4bca-98a4-e3b53a941126',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F42.jpg?alt=media&token=d2242eae-47f6-4889-988d-c1a3beb5beae',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F43.jpg?alt=media&token=9eda7686-02c0-4217-8779-8e72ea708df2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F44.jpg?alt=media&token=9263c73f-8dc0-4474-accc-b44d5cca2e34',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F45.jpg?alt=media&token=23d1c7ea-75b3-4cfa-92dc-078146c5c18b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F46.jpg?alt=media&token=e89d06bf-c51b-4a7d-8abe-279e442b0e0e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F47.jpg?alt=media&token=ea1ad5df-a7b5-430f-9ee7-118b3c2a862c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F48.jpg?alt=media&token=a1c33e33-c517-455c-824e-37537385f66b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F49.jpg?alt=media&token=fc4ea765-41a2-406d-8356-e46d11204822',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F50.jpg?alt=media&token=26b7b851-434c-422c-baaa-ec4390142adf',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F51.jpg?alt=media&token=3b34f85c-4caf-4df2-9e7f-4576fa86145b',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F52.jpg?alt=media&token=b385281e-8582-4e97-baae-df0659d2b6c9',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F53.jpg?alt=media&token=9fb79d21-8a21-493d-b417-f3a14a0db48c',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F54.jpg?alt=media&token=a79c65b2-547c-4aa3-ad74-12457a57e477',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F55.jpg?alt=media&token=e7d21cd3-66f5-453c-8b52-f5c84b897c76',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F56.jpg?alt=media&token=d93b4ad4-3791-42fe-83b3-44c68570fb19',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F57.jpg?alt=media&token=67a4ecc1-3eee-4204-85b3-10423354e6e6',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F58.jpg?alt=media&token=2f3c7993-69ee-427e-b326-6be285cee994',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F59.jpg?alt=media&token=0f2f6878-2b50-4d52-af18-0c412161f840',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F60.jpg?alt=media&token=81ec7472-09c6-48bc-b0c2-50cf9244e979',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F61.jpg?alt=media&token=88344ecf-b38a-4ec9-838b-ac199291bdfe',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F62.jpg?alt=media&token=8253d0d1-706a-40e2-8da3-d09001a227d1',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F63.jpg?alt=media&token=7e407984-2f77-418c-8f28-9334e456da46',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F64.jpg?alt=media&token=6d431471-72a3-4cb0-a06f-80dc5457a369',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F65.jpg?alt=media&token=69a2a88c-dd75-479c-ae67-1fa616615354',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F66.jpg?alt=media&token=aac54e8c-8ca0-4224-af1a-cb0676422e47',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F67.jpg?alt=media&token=b81812a8-50b9-4350-a52b-544719f9a363',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F68.jpg?alt=media&token=4fcc8c74-1695-48a4-9c37-0a060d9952f7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F69.jpg?alt=media&token=45ea3dce-fd6d-47cb-851d-785c7bb33ada',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F70.jpg?alt=media&token=9777d3e8-4004-4440-8740-348a9df0d533',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F71.jpg?alt=media&token=52e68b53-786a-4269-99b7-e8bed0b7fab4',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F72.jpg?alt=media&token=963e2006-65c9-4026-bd9d-cc3a2d749598',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F73.jpg?alt=media&token=321799b8-1058-47e7-9f46-0dbfee0d96cf',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F74.jpg?alt=media&token=b3224a63-efcc-494d-8d24-ea85960ee7d2',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F1%2F75.jpg?alt=media&token=a5a9c243-429f-4fdc-9af5-6f99d281351e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F76.jpg?alt=media&token=fe0ebe8b-2bb2-4b10-a99b-22f848574fc8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F77.jpg?alt=media&token=128dff63-6edd-4495-96c5-be8b736ce0e8',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F79.jpg?alt=media&token=3881fe54-a296-4c5d-ac8e-064169db2ca3',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F80.jpg?alt=media&token=43e7666e-7161-4b3d-859c-fa9d36667677',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F81.jpg?alt=media&token=2c9ba582-ddcc-4127-a217-2ec58a5abbfa',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F82.jpg?alt=media&token=e0961747-1365-4377-857c-f3bc4a4f74d7',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F83.jpg?alt=media&token=8e9c0097-490e-4ae5-b9f4-a368f6750adc',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F84.jpg?alt=media&token=42125fda-797a-4fe7-af1c-08fc1374e9de',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F85.jpg?alt=media&token=1702f7b9-8a2e-4ad1-85f6-8bdd77908cb6',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F86.jpg?alt=media&token=0c3313de-fa01-4de0-a96c-cba1046e94f0',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F87.jpg?alt=media&token=eb3919ca-1e04-49af-98cd-0147bfa05f28',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F88.jpg?alt=media&token=10291adb-b2eb-4f53-b635-e84d1ab2c3cb',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F89.jpg?alt=media&token=74cdbdcf-b0f1-4613-9aae-53096a63cd12',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F90.jpg?alt=media&token=f0fcb44f-e121-40f7-adb6-00a93661c251',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F91.jpg?alt=media&token=4beb4334-4d36-4124-8c66-ea36d804ec40',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F92.jpg?alt=media&token=776adc39-7dbf-45cf-a318-588a25cc3751',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F93.jpg?alt=media&token=e374bd01-d98d-4b2f-90e6-413deed5f166',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F94.jpg?alt=media&token=e358578a-2097-4ad9-8ea1-1572e5cbb51d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F95.jpg?alt=media&token=4281ec77-40f2-4435-953e-2bf605267977',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F96.jpg?alt=media&token=ec360234-f40b-444a-b8a8-bcc3b8a86d3f',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F97.jpg?alt=media&token=6394a610-6168-4eba-9178-b4774f12d84d',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F98.jpg?alt=media&token=034ab0dc-b488-446a-a5f9-ce6fd7bf9cce',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F99.jpg?alt=media&token=c0fea2a2-8e53-4ec4-984c-b743e82ed84e',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F100.jpg?alt=media&token=7f60923f-daa9-47f2-a8d8-08f04fc87736',
    'https://firebasestorage.googleapis.com/v0/b/comet-2-83cbc.appspot.com/o/manuais%2Fefi%2F2%2F101.jpg?alt=media&token=801b7d82-e35d-4fde-9c6b-94201e4d31c0',
  ];
  @override
  _PragaRuinState createState() => _PragaRuinState();
}

class _PragaRuinState extends State<PragaRuin> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildPragaRuinItem,
      itemCount: widget.efi.length,
    );
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
        index == 100) {
      return 
      Column(children: [

        Divider(color: Colors.red,height: 20,),
     Bannerlargo(),
      ],)
      
      
  ;
    } else {
      return Column(children: [
                Divider(color: Colors.red,height: 20,),
 Image.network(
            widget.efi[index],
            fit: BoxFit.cover,
          ),
        
      
      ],)
      
     ;
    }
  }
}
