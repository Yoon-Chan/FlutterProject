import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {

  var switchValue = false;
  String test = 'hello';
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.light(),

      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text('$test'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_color)),
            onPressed: () {
              if(test == 'hello'){
                setState(() {
                  test = 'flutter';
                  _color = Colors.amber;
                });
              } else {
                setState(() {
                  test = 'hello';
                  _color = Colors.blue;
                });
              }

            }
          ),
        ),
      ),
    );
  }




  // 실습 2 사용 코드
//  var switchValue = false;
  // // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //
  //     darkTheme: ThemeData.light(),
  //
  //     home: Scaffold(
  //       body: Center(
  //         child: Switch(
  //           value: switchValue,
  //           onChanged: (value) {
  //             setState(() {
  //               print(value);
  //               switchValue = value;
  //             });
  //           }),
  //       ),
  //       // Container(
  //       //   color: Colors.white,
  //       //     child : Center(
  //       //       child: Text('hello\nFlutter', textAlign: TextAlign.center,
  //       //       style: TextStyle(color: Colors.blue, fontSize: 20),),
  //       //     )
  //     ), //const MyHomePage(title: 'Flutter Demo Home Page'),
  //   );
  // }
}
