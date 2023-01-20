import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/vs2015.dart';
import 'package:test_app/consolePage.dart';
import 'package:test_app/courseData/course01.dart';
import 'package:test_app/theme/themeData.dart';

class CoursePage01 extends StatefulWidget {
  const CoursePage01({Key? key}) : super(key: key);

  @override
  State<CoursePage01> createState() => _CoursePage01State();
}

class _CoursePage01State extends State<CoursePage01> {

  dynamic colorShift1;//배경색
  dynamic colorShift2; //컨텐츠색
  dynamic colorShiftText; //글자색
  dynamic colorShiftBox;
  bool _darkMode = false;

  @override
  void initState(){
    super.initState();
    _loadMode();
  }

  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double myWidthSize = 360;

    return Scaffold(
      backgroundColor: colorShift1,
      appBar: AppBar(
        title: Text('파이썬 설치하기', style: TextStyle(color: colorShiftText),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: colorShift1,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          color: colorShiftText,
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.code),
            color: colorShiftText,
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ConsolePage())
                );
              },
          )
        ],
      ),
      body: Material(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: colorShift2,
        child: Container(
          width: 360*(widthSize/myWidthSize),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(ex01, style: TextStyle(fontSize: 20, color: colorShiftText),),

                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShift1),
                    padding: const EdgeInsets.all(20),
                    width: 340*(widthSize/myWidthSize),
                    child: Image.asset('assets/course/idle_01.jpg')
                  ),
                  onTap: (){},
                ),

                const SizedBox(height: 20,),

                Text(ex02, style: TextStyle(fontSize: 20, color: colorShiftText),),

                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShift1),
                      padding: const EdgeInsets.all(20),
                      width: 340*(widthSize/myWidthSize),
                      child: Image.asset('assets/course/idle_02.jpg')
                  ),
                  onTap: (){},
                ),

                const SizedBox(height: 20,),

                Text(ex03, style: TextStyle(fontSize: 20, color: colorShiftText),),

                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShift1),
                      padding: const EdgeInsets.all(20),
                      width: 340*(widthSize/myWidthSize),
                      child: Image.asset('assets/course/idle_03.jpg')
                  ),
                  onTap: (){},
                ),

                const SizedBox(height: 20,),

                Text(ex04, style: TextStyle(fontSize: 20, color: colorShiftText),),

                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShift1),
                      padding: const EdgeInsets.all(20),
                      width: 340*(widthSize/myWidthSize),
                      child: Image.asset('assets/course/idle_04.jpg')
                  ),
                  onTap: (){},
                ),

                const SizedBox(height: 20,),

                Text(ex05, style: TextStyle(fontSize: 20, color: colorShiftText),),

                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShift1),
                      padding: const EdgeInsets.all(20),
                      width: 340*(widthSize/myWidthSize),
                      child: Image.asset('assets/course/idle_05.jpg')
                  ),
                  onTap: (){},
                ),

                const SizedBox(height: 20,),

                Text(ex06, style: TextStyle(fontSize: 20, color: colorShiftText),),

                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShift1),
                      padding: const EdgeInsets.all(20),
                      width: 340*(widthSize/myWidthSize),
                      child: Image.asset('assets/course/idle_06.jpg')
                  ),
                  onTap: (){},
                ),

                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      )
    );
  }

  _loadMode() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _darkMode = prefs.getBool('colorMode') ?? false;
      SetDarkMode(_darkMode);
      //print(_darkMode);
    });
  }

  void SetDarkMode(bool darkMode){
    if (darkMode == false){
      colorShift1 = lightTheme['colorShift1'];
      colorShift2 = lightTheme['colorShift2'];
      colorShiftText = lightTheme['colorShiftText'];
      colorShiftBox = lightTheme['colorShiftCodeBox'];
    }
    if (darkMode == true){
      colorShift1 = darkTheme['colorShift1'];
      colorShift2 = darkTheme['colorShift2'];
      colorShiftText = darkTheme['colorShiftText'];
      colorShiftBox = darkTheme['colorShiftCodeBox'];
    }
  }
}