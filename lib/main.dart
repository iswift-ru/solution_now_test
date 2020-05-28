import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 40),
                  child: Container(
                    height: 108,
                    width: 145,
                    color: Color(0xff4cb050),
                  ),
                ),
                Text(
                  'Добро пожаловать!',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff4cb050),
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Поиск работы, временной или постоянной, с\n полной занятостью или частичной',
                    style: TextStyle(fontSize: 14, color: Color(0xffc2c2c2)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 40, bottom: 14, left: 47, right: 47),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Номер телефона',
                        labelStyle:
                            TextStyle(fontSize: 13, color: Color(0xffc2c2c2)),
                        border: OutlineInputBorder()),
                    style: TextStyle(fontSize: 15, color: Color(0xff202020)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 47, right: 47),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Код из SMS',
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(color: Color(0xffc2c2c2))),
                    style: TextStyle(fontSize: 15, color: Color(0xff202020)),
                  ),
                ),
                Text(
                  'Повторная отправка доступна через 1:12',
                  style: TextStyle(
                      color: Color(0xff4cb050),
                      fontSize: 11,
                      decoration: TextDecoration.underline),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 11),
                  child: FlatButton(
                    child: Text(
                      'ВОЙТИ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    color: Color(0xff4cb050),
                    textColor: Colors.white,
                    onPressed: () {},
                    padding: EdgeInsets.only(top: 15, bottom: 16),
                  ),
                ),
                Text(
                  'Регистрация',
                  style: TextStyle(fontSize: 11, color: Color(0xffc2c2c2)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 88, top: 40, right: 88),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/facebook.svg',
                        height: 45,
                      ),
                      SvgPicture.asset(
                        'assets/google.svg',
                        height: 45,
                      ),
                      SvgPicture.asset(
                        'assets/vk.svg',
                        height: 45,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 40),
                  child: Container(
                    height: 108,
                    width: 145,
                    color: Color(0xff4cb050),
                  ),
                ),
                Text(
                  'Добро пожаловать!',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff4cb050),
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Поиск работы, временной или постоянной, с\n полной занятостью или частичной',
                    style: TextStyle(fontSize: 14, color: Color(0xffc2c2c2)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 47, top: 25),
                  child: Text(
                    'Номер телефона',
                    style: TextStyle(fontSize: 11, color: Color(0xffc2c2c2)),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 14, left: 47, right: 47),
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    style: TextStyle(fontSize: 15, color: Color(0xff202020)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 47, right: 47),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Код из SMS',
                        hintStyle:
                            TextStyle(fontSize: 13, color: Color(0xffc2c2c2)),
                        border: OutlineInputBorder()),
                    style: TextStyle(fontSize: 15, color: Color(0xff202020)),
                  ),
                ),
                Text(
                  'Повторная отправка доступна через 1:12',
                  style: TextStyle(
                      color: Color(0xff4cb050),
                      fontSize: 11,
                      decoration: TextDecoration.underline),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 11),
                  child: FlatButton(
                    child: Text(
                      'ВОЙТИ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    color: Color(0xff4cb050),
                    textColor: Colors.white,
                    onPressed: () {},
                    padding: EdgeInsets.only(top: 15, bottom: 16),
                  ),
                ),
                Text(
                  'Регистрация',
                  style: TextStyle(fontSize: 11, color: Color(0xffc2c2c2)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 88, top: 40, right: 88),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/facebook.svg',
                        height: 45,
                      ),
                      SvgPicture.asset(
                        'assets/google.svg',
                        height: 45,
                      ),
                      SvgPicture.asset(
                        'assets/vk.svg',
                        height: 45,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }
}
