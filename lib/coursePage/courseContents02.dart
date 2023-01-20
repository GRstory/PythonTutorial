import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/vs2015.dart';
import 'package:test_app/consolePage.dart';
import 'package:test_app/courseData/course02.dart';
import 'package:test_app/theme/themeData.dart';

class CoursePage02 extends StatefulWidget {
  const CoursePage02({Key? key}) : super(key: key);

  @override
  State<CoursePage02> createState() => _CoursePage02State();
}

class _CoursePage02State extends State<CoursePage02> {

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
        title: Text('변수와 입출력', style: TextStyle(color: colorShiftText),),
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
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShiftBox),
                    padding: const EdgeInsets.all(20),
                    width: 360*(widthSize/myWidthSize),
                    child: HighlightView(
                      code1,
                      language: 'python',
                      theme: vs2015Theme,
                      textStyle: const TextStyle(fontFamily: 'D2Coding', fontSize: 16,),
                    ),
                  ),
                  onTap: (){
                    Clipboard.setData(ClipboardData(text: code1));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('코드 복사')));
                  },
                ),

                const SizedBox(height: 20,),

                Text(ex02, style: TextStyle(fontSize: 20, color: colorShiftText),),

                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShiftBox),
                    padding: const EdgeInsets.all(20),
                    width: 340*(widthSize/myWidthSize),
                    child: HighlightView(
                      code2,
                      language: 'python',
                      theme: vs2015Theme,
                      textStyle: const TextStyle(fontFamily: 'D2Coding', fontSize: 16,),
                    ),
                  ),
                  onTap: (){
                    Clipboard.setData(ClipboardData(text: code2));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('코드 복사')));
                  },
                ),

                const SizedBox(height: 20,),

                Text(ex03, style: TextStyle(fontSize: 20, color: colorShiftText),),

                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShiftBox),
                    padding: const EdgeInsets.all(20),
                    width: 340*(widthSize/myWidthSize),
                    child: HighlightView(
                      code3,
                      language: 'python',
                      theme: vs2015Theme,
                      textStyle: const TextStyle(fontFamily: 'D2Coding', fontSize: 16,),
                    ),
                  ),
                  onTap: (){
                    Clipboard.setData(ClipboardData(text: code3));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('코드 복사')));
                  },
                ),

                const SizedBox(height: 20,),

                Text(ex04, style: TextStyle(fontSize: 20, color: colorShiftText),),

                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShiftBox),
                    padding: const EdgeInsets.all(20),
                    width: 340*(widthSize/myWidthSize),
                    child: HighlightView(
                      code4,
                      language: 'python',
                      theme: vs2015Theme,
                      textStyle: const TextStyle(fontFamily: 'D2Coding', fontSize: 16,),
                    ),
                  ),
                  onTap: (){
                    Clipboard.setData(ClipboardData(text: code4));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('코드 복사')));
                  },
                ),

                const SizedBox(height: 20,),

                Text(ex05, style: TextStyle(fontSize: 20, color: colorShiftText),),

                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShiftBox),
                    padding: const EdgeInsets.all(20),
                    width: 340*(widthSize/myWidthSize),
                    child: HighlightView(
                      code5,
                      language: 'python',
                      theme: vs2015Theme,
                      textStyle: const TextStyle(fontFamily: 'D2Coding', fontSize: 16,),
                    ),
                  ),
                  onTap: (){
                    Clipboard.setData(ClipboardData(text: code5));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('코드 복사')));
                  },
                ),

                const SizedBox(height: 20,),

                Text(ex06, style: TextStyle(fontSize: 20, color: colorShiftText),),

                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShiftBox),
                    padding: const EdgeInsets.all(20),
                    width: 340*(widthSize/myWidthSize),
                    child: HighlightView(
                      code6,
                      language: 'python',
                      theme: vs2015Theme,
                      textStyle: const TextStyle(fontFamily: 'D2Coding', fontSize: 16,),
                    ),
                  ),
                  onTap: (){
                    Clipboard.setData(ClipboardData(text: code6));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('코드 복사')));
                  },
                ),

                const SizedBox(height: 20,),

                Text(ex07, style: TextStyle(fontSize: 20, color: colorShiftText),),
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