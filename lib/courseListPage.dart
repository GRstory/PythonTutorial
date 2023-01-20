import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'coursePage/courseInfo.dart';
import 'coursePage/courseContents01.dart';
import 'coursePage/courseContents02.dart';
import 'coursePage/courseContents03.dart';
import 'coursePage/courseContents04.dart';
import 'coursePage/courseContents05.dart';
import 'coursePage/courseContents06.dart';
import 'coursePage/courseContents07.dart';
import 'coursePage/courseContents08.dart';
import 'coursePage/courseContents09.dart';

import 'theme/themeData.dart';

class PyCourse extends StatefulWidget {
  const PyCourse({Key? key}) : super(key: key);

  @override
  State<PyCourse> createState() => _PyCourseState();
}

class _PyCourseState extends State<PyCourse> {

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
            floating: false,
            expandedHeight: 270*(widthSize/myWidthSize),
            elevation: 0,
            backgroundColor: colorShift1,
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              color: colorShiftText,
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('파이썬 강좌', style: TextStyle(fontSize: 20, color: colorShiftText),),
              centerTitle: true,
              background: Image.asset('assets/images/listImage02.png', fit: BoxFit.cover,),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.info_outline),
                color: colorShiftText,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CoursePageInfo())
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
                    Container(// 애니메이션 컨테이너, 리스트타일 시작
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
                              Icon(Icons.download_outlined, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('파이썬 설치하기', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CoursePage01())
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(//상단 리스트타일
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
                              Icon(Icons.filter_1, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('변수와 입출력', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CoursePage02())
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
                    Container(//중간 리스트타일
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
                              Icon(Icons.add, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('연산자', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CoursePage03())
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
                    Container(//하단 리스트타일
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
                              Icon(Icons.data_array, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('배열', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CoursePage04())
                            );
                          },
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Container(//상단 리스트타일
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
                              Text('조건문', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CoursePage05())
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

                    Container(//하단 리스트타일
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
                              Icon(Icons.code, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('반복문', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CoursePage06())
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Container(//상단 리스트타일
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
                              Icon(Icons.data_object, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('함수', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CoursePage07())
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
                    Container(//중간 리스트타일
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
                              Icon(Icons.data_object, size: 30, color: colorShiftIcon,),
                              const SizedBox(width: 20,),
                              Text('객체', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CoursePage08())
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
                    Container(//하단 리스트타일
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
                              Text('클래스', style: TextStyle(fontSize: 20, color: colorShiftText),),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CoursePage09())
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 500,
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
      colorShiftIcon = lightTheme['colorShiftIconCourse'];
    }
    if (darkMode == true){
      colorShift1 = darkTheme['colorShift1'];
      colorShift2 = darkTheme['colorShift2'];
      colorShiftText = darkTheme['colorShiftText'];
      colorShiftIcon = darkTheme['colorShiftIconCourse'];
    }
  }
}
