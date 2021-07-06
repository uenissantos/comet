import 'package:comunidadecomet/utilitarios/banner.dart';
import 'package:flutter/material.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';
import 'package:photo_view/photo_view.dart';


// ignore: camel_case_types
class fotoZoon extends StatelessWidget {

  final String url;

  fotoZoon({Key key, @required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: BannerC(),)
      ),
      body: fotoZoonScreen(url: url),
    );
  }
}

// ignore: camel_case_types
class fotoZoonScreen extends StatefulWidget {
  final String url;

  fotoZoonScreen({Key key, @required this.url}) : super(key: key);

  @override
  State createState() => fotoZoonScreenState(url: url);
}

// ignore: camel_case_types
class fotoZoonScreenState extends State<fotoZoonScreen> {
  final String url;

  fotoZoonScreenState({Key key, @required this.url});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child:GestureZoomBox(
        maxScale: 8,
        doubleTapScale: 4,
        duration: Duration(milliseconds: 200),
        child:  PhotoView(imageProvider: NetworkImage(url)),)) ,
    );
  }
}
