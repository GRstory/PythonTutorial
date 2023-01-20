import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:restart_app/restart_app.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'easterPage.dart';
import 'theme/themeData.dart';

class DevPage extends StatefulWidget {
  const DevPage({Key? key}) : super(key: key);

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {

  dynamic colorShift1;//배경색
  dynamic colorShift2; //컨텐츠색
  dynamic colorShiftText; //글자색
  dynamic colorShiftIcon; //아이콘색
  dynamic iconShiftIcon; //아이콘
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
          title: Text('개발자 정보', style: TextStyle(color: colorShiftText)),
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
          actions: [
            IconButton(
                icon: iconShiftIcon,
                color: colorShiftIcon,
                onPressed: (){
                  _ReverseMode(); //다크모드 맵 변경
                  _showDialog(widthSize, myWidthSize); //팝업
                }
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150*(widthSize/myWidthSize),
                          child: Image.asset('assets/images/devImage01.png', fit: BoxFit.cover),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text('김준명', style: TextStyle(fontSize: 30, color: colorShiftText),),
                      ],
                    ),
                    onTap: (){
                      Clipboard.setData(const ClipboardData(text: 'https://blog.naver.com/aratino5165'));
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('개발자 블로그 링크 복사')));
                      touch +=1;
                      if(touch == 10){
                        touch = 0;
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const EasterPage())
                        );
                      }
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('최동현', style: TextStyle(fontSize: 30, color: colorShiftText),),
                      ],
                    ),
                    onTap: (){},
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  void _showDialog(double widthSize, myWidthSize) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: const Color(0x55000000),
      builder: (BuildContext context) {
        Future.delayed(const Duration(milliseconds: 1200), () {
          Navigator.pop(context);
          Restart.restartApp();
        });
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            elevation: 0,
            backgroundColor: colorShift1,
            title: _darkMode ? Text('다크모드 적용중', style: TextStyle(color: colorShiftText),) : Text('라이트모드 적용중', style: TextStyle(color: colorShiftText),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
            ),
            content: SizedBox(
              height: 100*(widthSize/myWidthSize),
              child: Center(
                  child:SizedBox(
                    child: const SpinKitFadingCube(
                      color: Colors.blue,
                      size: 20.0,
                    ),
                    height: 50.0*(widthSize/myWidthSize),
                    width: 50.0*(widthSize/myWidthSize),
                  )
              ),
            ),
          ),
        );
      },
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

  _ReverseMode() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('colorMode', !_darkMode);
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
      colorShiftIcon = lightTheme['colorShiftIconDarkMode'];
      iconShiftIcon = Icon(Icons.nightlight);
    }
    if (darkMode == true){
      colorShift1 = darkTheme['colorShift1'];
      colorShift2 = darkTheme['colorShift2'];
      colorShiftText = darkTheme['colorShiftText'];
      colorShiftIcon = darkTheme['colorShiftIconDarkMode'];
      iconShiftIcon = Icon(Icons.circle);
    }
  }
}