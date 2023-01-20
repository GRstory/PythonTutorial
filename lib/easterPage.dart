import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'theme/themeData.dart';

class EasterPage extends StatefulWidget {
  const EasterPage({Key? key}) : super(key: key);

  @override
  State<EasterPage> createState() => _EasterPageState();
}

class _EasterPageState extends State<EasterPage> {

  dynamic colorShift1; //배경색
  dynamic colorShift2; //컨텐츠색
  dynamic colorShiftText; //글자색
  bool _darkMode = true;

  @override
  void initState(){
    super.initState();
    _loadMode();
  }

  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double myWidthSize = 360;

    var touch = 0;

    return Scaffold(
        backgroundColor: colorShift1,
        appBar: AppBar(
          title: Text('이스터에그', style: TextStyle(color: colorShiftText)),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: colorShift1,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            color: colorShiftText,
            icon:  const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                  width: 340*(widthSize/myWidthSize),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colorShift2
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text('구조 설계, 디자인, 코딩: 김준명', style: TextStyle(fontSize:15, color: colorShiftText)),
                      Text('강좌, 퀴즈 데이터 : 최동훈', style: TextStyle(fontSize:15, color: colorShiftText)),
                      Text('dev 20220613 17:00', style: TextStyle(fontSize:15, color: colorShiftText)),
                    ],
                  )
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: 340*(widthSize/myWidthSize),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colorShift2
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/images/easter01.jpg')
                      ),
                      const SizedBox(height: 20,),
                      Text('아롱이 01', style: TextStyle(fontSize:15, color: colorShiftText)),
                    ],
                  ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 340*(widthSize/myWidthSize),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: colorShift2
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/easter02.jpg')
                    ),
                    const SizedBox(height: 20,),
                    Text('아롱이 02', style: TextStyle(fontSize:15, color: colorShiftText)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 340*(widthSize/myWidthSize),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: colorShift2
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/easter03.jpg')
                    ),
                    const SizedBox(height: 20,),
                    Text('아롱이 03', style: TextStyle(fontSize:15, color: colorShiftText)),
                  ],
                ),
              ),
            ],
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
    }
    if (darkMode == true){
      colorShift1 = darkTheme['colorShift1'];
      colorShift2 = darkTheme['colorShift2'];
      colorShiftText = darkTheme['colorShiftText'];
    }
  }
}