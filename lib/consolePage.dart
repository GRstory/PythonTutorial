import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'theme/themeData.dart';

class ConsolePage extends StatefulWidget {
  const ConsolePage({Key? key}) : super(key: key);

  @override
  State<ConsolePage> createState() => _ConsolePageState();
}

class _ConsolePageState extends State<ConsolePage> {

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
    return Scaffold(
      appBar: AppBar(
        title: Text('파이썬 온라인 인터프리터', style: TextStyle(color: colorShiftText),),
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
      ),
      body: WebView(
        initialUrl: 'https://replit.com/languages/python3',
        javascriptMode: JavascriptMode.unrestricted,
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

  void SetDarkMode(bool darkMode) {
    if (darkMode == false) {
      colorShift1 = lightTheme['colorShift1'];
      colorShift2 = lightTheme['colorShift2'];
      colorShiftText = lightTheme['colorShiftText'];
    }
    if (darkMode == true) {
      colorShift1 = darkTheme['colorShift1'];
      colorShift2 = darkTheme['colorShift2'];
      colorShiftText = darkTheme['colorShiftText'];
    }
  }
}
