import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'pages/intro_page.dart';
import 'package:flutter/services.dart';


void main(){
  //prevent rotation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: IntroPage(),
    );
  }
}
