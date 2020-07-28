import 'dart:async';
import 'package:astra/page/Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:astra/page/loginPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  createState() => _MyApp();}

class _MyApp extends State<MyApp> {
  bool _alterWidget = false;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
            () => setState(() {
          _alterWidget = true;
          print("hello");
        }));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    return MaterialApp(
      title: 'Astra',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder> {
        'Control': (BuildContext cxt) => SecondScreen(), },
      home:AnimatedSwitcher(
          transitionBuilder: (Widget child, Animation animation) => (
          FadeTransition(child: child,
            opacity: animation,)
          ),
          duration: Duration(milliseconds: 2000),
          child: _alterWidget
              ? LoginPage()
              : Image.asset('assets/splash.jpg',fit: BoxFit.fill,))
    );
  }
}

