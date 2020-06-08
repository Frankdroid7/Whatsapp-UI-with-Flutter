import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/TabViews/CallsTabView.dart';
import 'package:whatsappui/TabViews/ChatTabView.dart';
import 'package:whatsappui/TabViews/StatusTabView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: Color(0xff329f94),
          dividerTheme: DividerThemeData(indent: 80.0, endIndent: 10.0)),
//      theme: ThemeData.dark().copyWith(
//          accentColor: Color(0xff11A599),
//          dividerTheme: DividerThemeData(
//            indent: 70.0,
//            endIndent: 15.0,
//          ),
//          floatingActionButtonTheme: FloatingActionButtonThemeData(
////            backgroundColor: Color(0xff14A999),
//              )),
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              Icon(
                Icons.search,
                size: 25.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 15.0,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              )
            ],
            backgroundColor: Color(0xff075E55),
            title: Text(
              'WhatsApp',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Icon(Icons.camera_alt),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'CHATS',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 5.0),
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                        child: Text(
                          '23',
                          style: TextStyle(
                              color: Colors.green[800], fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('STATUS'),
                        SizedBox(width: 5.0),
                        Container(
                          width: 7.0,
                          decoration: new BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                      ]),
                ),
                Tab(
                  child: Text('CALLS'),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Text(''),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: ChatTabView(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: StatusTabView(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: CallsTabView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
