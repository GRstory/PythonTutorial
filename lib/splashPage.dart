import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'theme/themeData.dart';
import 'homePage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  dynamic colorShift1;
  dynamic colorShiftText; //글자색
  bool _darkMode = false;

  @override
  void initState(){
    super.initState();
    _loadMode();

    Timer(const Duration(milliseconds: 1200), () {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => HomePage()
      )
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    var heightSize = MediaQuery.of(context).size.height;
    var widthSize = MediaQuery.of(context).size.width;
    final double myWidthSize = 360;

    return WillPopScope(
      onWillPop: () async => false,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor:1.0),
        child: Scaffold(
          backgroundColor: colorShift1,
          body: Container(
            height: heightSize,
            width: widthSize,
            color: colorShift1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.5*heightSize,
                ),
                const SpinKitFadingCube(
                  color: Colors.blue,
                  size: 20.0,
                ),
                SizedBox(
                  height: 0.3*heightSize,
                ),
                Text('파이썬 튜토리얼', style: TextStyle(color: colorShiftText, fontSize: 20),)
              ],
            )
          ),
        ),
      ),
    );
  }

  _loadMode() async{
    SharedPreferences prefs = await SharedPreferences.getInstance(); //공유 맵 변수
    setState(() {
      _darkMode = prefs.getBool('colorMode') ?? false; //다크모드 불러오기
      SetDarkMode(_darkMode); //다크모드 설정
      //print(_darkMode);
    });
  }

  void SetDarkMode(bool darkMode){
    if (darkMode == false){
      colorShift1 = lightTheme['colorShift1'];
      colorShiftText = lightTheme['colorShiftText'];
    }
    if (darkMode == true){
      colorShift1 = darkTheme['colorShift1'];
      colorShiftText = darkTheme['colorShiftText'];
    }
  }
}
