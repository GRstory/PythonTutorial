import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'devPage.dart';
import 'courseListPage.dart';
import 'quizListPage.dart';
import 'theme/themeData.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  dynamic colorShift1; //배경색
  dynamic colorShift2; //컨텐츠색
  dynamic colorShiftText; //글자색
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

    return WillPopScope(
      onWillPop: () async{
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        backgroundColor: colorShift1,
        appBar: AppBar(
          title: Text('파이썬 튜토리얼', style: TextStyle(color: colorShiftText),),
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: colorShift1,
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: colorShiftText,
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DevPage())
                );
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 255*(widthSize/myWidthSize),
                width: 340*(widthSize/myWidthSize),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: colorShift2,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    highlightColor: Colors.black.withOpacity(0.001),
                    splashColor: Colors.black.withOpacity(0.1),
                    child: Stack(
                      children: [
                        Image.asset('assets/images/mainImage01.png'),
                        Positioned(
                          bottom: 20*(widthSize/myWidthSize),
                          left: 20*(widthSize/myWidthSize),
                          child: Text('파이썬 강좌 입장', style: TextStyle(fontSize: 30, color: colorShiftText),),)
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PyCourse())
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 255*(widthSize/myWidthSize),
                width: 340*(widthSize/myWidthSize),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: colorShift2,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    highlightColor: Colors.black.withOpacity(0.001),
                    splashColor: Colors.black.withOpacity(0.1),
                    child: Stack(
                      children: [
                        Image.asset('assets/images/mainImage02.png'),
                        Positioned(
                          top: 20*(widthSize/myWidthSize),
                          right: 20*(widthSize/myWidthSize),
                          child: Text('파이썬 퀴즈 입장', style: TextStyle(fontSize: 30, color: colorShiftText),),)
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PyQuiz())
                      );
                    },
                  ),
                ),
              ),
            ],
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
      colorShift2 = lightTheme['colorShift2'];
      colorShiftText = lightTheme['colorShiftText'];
    }
    if (darkMode == true){
      colorShift1 = darkTheme['colorShift1'];
      colorShift2 = darkTheme['colorShift2'];
      colorShiftText = darkTheme['colorShiftText'];
    }
  }
}