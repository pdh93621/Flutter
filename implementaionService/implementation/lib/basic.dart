import 'package:flutter/material.dart';

//runApp은 widget을 호출!!!!!!!
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: 가장 먼저 보여주는 경로. 홈이 없다면 아무것도 나오지 않는다.
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is me!'),
      ),
      body: Center(
        //Colunm 위젯은 세로로 배치 > children
        child: Column(
          children: <Widget>[Text('Hello'), Text('Hello'), Text('Hello')],
        ),
      ),
    );
  }
}
