import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/quizPage/quizContents01.dart';
import 'package:test_app/quizPage/quizContents02.dart';
import 'package:test_app/quizPage/quizContents03.dart';
import 'package:test_app/quizPage/quizContents04.dart';
import 'package:test_app/quizPage/quizContents05.dart';
import 'package:test_app/quizPage/quizContents06.dart';
import 'package:test_app/quizPage/quizInfo.dart';
import 'theme/themeData.dart';

class PyQuiz extends StatefulWidget {
  const PyQuiz({Key? key}) : super(key: key);

  @override
  State<PyQuiz> createState() => _PyQuizState();
}

class _PyQuizState extends State<PyQuiz> {

  dynamic colorShift1;//배경색
  dynamic colorShift2; //컨텐츠색
  dynamic colorShiftText; //글자색
  dynamic colorShiftIcon; //아이콘색
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 270*(widthSize/myWidthSize),
            elevation: 0,
            floating: false,
            backgroundColor: colorShift1,
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              color: colorShiftText,
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('파이썬 퀴즈', style: TextStyle(fontSize: 20, color: colorShiftText),),
              centerTitle: true,
              background: Image.asset('assets/images/listImage01.png', fit: BoxFit.cover,),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.info_outline),
                color: colorShiftText,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const QuizPageInfo())
                  );
                },
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    AnimatedContainer(// 애니메이션 컨테이너, 리스트타일 시작
                      duration: const Duration(seconds: 1),
                      height: 70,
                      width: 500,
                      child: Material(// 마테리얼 테마
                        borderRadius: BorderRadius.circular(20),
                        color: colorShift2,
                        child: InkWell(// 잉크 효과
                          borderRadius: BorderRadius.circular(20),
                          highlightColor: Colors.black.withOpacity(0.001),
                          splashColor: Colors.black.withOpacity(0.1),
                          child: Row(// 아이콘, 글자
                            children: [
                              const SizedBox(width: 20,),
                              Icon(Icons.filter_1, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('입력을 통한 사칙연산', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const QuizPage01())
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AnimatedContainer(//상단 리스트타일
                      duration: const Duration(seconds: 1),
                      height: 70,
                      width: 500,
                      child: Material(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: colorShift2,
                        child: InkWell(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          highlightColor: Colors.black.withOpacity(0.001),
                          splashColor: Colors.black.withOpacity(0.1),
                          child: Row(
                            children: [
                              const SizedBox(width: 20,),
                              Icon(Icons.code, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('if-elif문 활용', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const QuizPage02())
                            );
                          },
                        ),
                      ),
                    ),
                    Container(//구분선
                      height: 1,
                      color: colorShift2,
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        height: 1,
                        color: colorShift1,
                      ),
                    ),
                    AnimatedContainer(//중간 리스트타일
                      duration: const Duration(seconds: 1),
                      height: 70,
                      width: 500,
                      child: Material(
                        color: colorShift2,
                        child: InkWell(
                          highlightColor: Colors.black.withOpacity(0.001),
                          splashColor: Colors.black.withOpacity(0.1),
                          child: Row(
                            children: [
                              const SizedBox(width: 20,),
                              Icon(Icons.code, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('반복문 활용', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const QuizPage03())
                            );
                          },
                        ),
                      ),
                    ),
                    Container(//구분선
                      height: 1,
                      color: colorShift2,
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        height: 1,
                        color: colorShift1,
                      ),
                    ),
                    AnimatedContainer(//중간 리스트타일
                      duration: const Duration(seconds: 1),
                      height: 70,
                      width: 500,
                      child: Material(
                        color: colorShift2,
                        child: InkWell(
                          highlightColor: Colors.black.withOpacity(0.001),
                          splashColor: Colors.black.withOpacity(0.1),
                          child: Row(
                            children: [
                              const SizedBox(width: 20,),
                              Icon(Icons.code, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('중복 반복문 활용', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const QuizPage04())
                            );
                          },
                        ),
                      ),
                    ),
                    Container(//구분선
                      height: 1,
                      color: colorShift2,
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        height: 1,
                        color: colorShift1,
                      ),
                    ),
                    AnimatedContainer(//중간 리스트타일
                      duration: const Duration(seconds: 1),
                      height: 70,
                      width: 500,
                      child: Material(
                        color: colorShift2,
                        child: InkWell(
                          highlightColor: Colors.black.withOpacity(0.001),
                          splashColor: Colors.black.withOpacity(0.1),
                          child: Row(
                            children: [
                              const SizedBox(width: 20,),
                              Icon(Icons.code, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('반복문과 if-elif문 혼합 활용', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const QuizPage05())
                            );
                          },
                        ),
                      ),
                    ),
                    Container(//구분선
                      height: 1,
                      color: colorShift2,
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        height: 1,
                        color: colorShift1,
                      ),
                    ),
                    AnimatedContainer(//하단 리스트타일
                      duration: const Duration(seconds: 1),
                      height: 70,
                      width: 500,
                      child: Material(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: colorShift2,
                        child: InkWell(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          highlightColor: Colors.black.withOpacity(0.001),
                          splashColor: Colors.black.withOpacity(0.1),
                          child: Row(
                            children: [
                              const SizedBox(width: 20,),
                              Icon(Icons.data_object, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('함수 활용', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const QuizPage06())
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 600,
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
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
      colorShiftIcon = lightTheme['colorShiftIconQuiz'];
    }
    if (darkMode == true){
      colorShift1 = darkTheme['colorShift1'];
      colorShift2 = darkTheme['colorShift2'];
      colorShiftText = darkTheme['colorShiftText'];
      colorShiftIcon = darkTheme['colorShiftIconQuiz'];
    }
  }
}
