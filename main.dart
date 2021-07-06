import 'package:admob_flutter/admob_flutter.dart';
import 'package:comunidadecomet/principalHome/HomerPrimary.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

final ThemeData temaPadrao = ThemeData(
  primaryColor: Colors.blueGrey,
  accentColor: Colors.blue,
);
void main() {
WidgetsFlutterBinding.ensureInitialized();
  //inicializarAdmod
  Admob.initialize();
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'comunidade',
      theme: temaPadrao,
      home: SplashScreen(
          seconds: 5,
          navigateAfterSeconds: new Home(),
          title: new Text(
            '\n Manuais \n  \n  Kasinsk \n ',
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 30,
            ),
          ),
          image: new Image.asset('feira/inicial.png'),
          backgroundColor: Colors.black12,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 70.0,
          loaderColor: Colors.deepOrange),
      initialRoute: '/',
    );
  }
}
