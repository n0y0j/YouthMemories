import 'package:flutter/material.dart';
import 'package:youth_memories/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouthMemories',
      theme: ThemeData(brightness: Brightness.light),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Container(
                child: Center(
                  child: Text('홈'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('버킷리스트'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('앨범'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('정보'),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
