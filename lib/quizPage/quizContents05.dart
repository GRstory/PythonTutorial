import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/vs2015.dart';
import 'package:test_app/consolePage.dart';
import 'package:test_app/quizData/quiz05.dart';
import 'package:test_app/theme/themeData.dart';

class QuizPage05 extends StatefulWidget {
  const QuizPage05({Key? key}) : super(key: key);

  @override
  State<QuizPage05> createState() => _QuizPage05State();
}

class _QuizPage05State extends State<QuizPage05> {

  dynamic colorShift1;//배경색
  dynamic colorShift2; //컨텐츠색
  dynamic colorShiftText; //글자색
  dynamic colorShiftBox;
  dynamic colorShiftBotton;
  bool _darkMode = false;

  var _answerClick = false;
  var answer = "정답";

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
          title: Text('반복문과 if-elif문 혼합 활용', style: TextStyle(color: colorShiftText),),
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
            ),
          ],
        ),
        floatingActionButton: GestureDetector(
          onTap: (){
            setState(() {
              if (_answerClick == false){
                _answerClick = true;
                answer = answer2;
              }
              else {
                _answerClick = false;
                answer = answer1;
              }
            });
          },
          child: AnimatedSize(
            duration: const Duration(milliseconds: 200),
            curve: Curves.linear,
            child: Material(
              color: colorShiftBotton,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Text(answer, style: TextStyle(fontSize: 20, color: _answerClick ? colorShiftText : Colors.black),),
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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

                  InkWell(//코드 위젯
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorShiftBox),
                      padding: const EdgeInsets.all(20),
                      width: 360*(widthSize/myWidthSize),
                      child: HighlightView(//구문강조 라이브러리 위젯
                        code01,
                        language: 'python',
                        theme: vs2015Theme,
                        textStyle: const TextStyle(fontFamily: 'D2Coding', fontSize: 16,),
                      ),
                    ),
                    onTap: (){
                      Clipboard.setData(ClipboardData(text: code01));
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('코드 복사')));
                    },
                  ),

                  const SizedBox(height: 500,),
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
      colorShiftBotton = lightTheme['colorShiftAnswerBox'];
    }
    if (darkMode == true){
      colorShift1 = darkTheme['colorShift1'];
      colorShift2 = darkTheme['colorShift2'];
      colorShiftText = darkTheme['colorShiftText'];
      colorShiftBox = darkTheme['colorShiftCodeBox'];
      colorShiftBotton = darkTheme['colorShiftAnswerBox'];
    }
  }
}