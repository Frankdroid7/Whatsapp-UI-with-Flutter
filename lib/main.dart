import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsappui/TabViews/CallsTabView.dart';
import 'package:whatsappui/TabViews/ChatTabView.dart';
import 'package:whatsappui/TabViews/StatusTabView.dart';
import 'package:whatsappui/theme_changer.dart';

void main() {
  runApp(MyApp());
}

enum PopUpMenuOptions { Light, Dark }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeChanger(),
      child: Consumer<ThemeChanger>(
        builder: (context, themeChanger, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeChanger.themeData,
            home: DefaultTabController(
              initialIndex: 1,
              length: 4,

              /* Used Builder so that I
              can get the right context
              when I call Theme.of(context) */
              child: Builder(
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: Theme.of(context).primaryColor,
                      actions: <Widget>[
                        Icon(
                          Icons.search,
                          size: 25.0,
                          color: Theme.of(context).textSelectionColor,
                        ),
//
                        PopupMenuButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Theme.of(context).textSelectionColor,
                          ),
                          onSelected: (value) {
                            switch (value) {
                              case PopUpMenuOptions.Light:
                                {
                                  Provider.of<ThemeChanger>(context,
                                          listen: false)
                                      .lightTheme();
                                  break;
                                }
                              case PopUpMenuOptions.Dark:
                                {
                                  Provider.of<ThemeChanger>(context,
                                          listen: false)
                                      .darkTheme();
                                  break;
                                }
                            }
                          },
                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                value: PopUpMenuOptions.Light,
                                child: Text('Light Theme',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .headline1
                                            .color)),
                              ),
                              PopupMenuItem(
                                value: PopUpMenuOptions.Dark,
                                child: Text(
                                  'Dark Theme',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .headline1
                                          .color),
                                ),
                              ),
                            ];
                          },
                        ),
                      ],
                      title: Text(
                        'WhatsApp',
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Theme.of(context).textTheme.headline3.color),
                      ),
                      bottom: TabBar(
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
                                  backgroundColor:
                                      Theme.of(context).indicatorColor,
                                  child: Text(
                                    '23',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            .color,
                                        fontSize: 12.0),
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
                                        color: Colors.white,
                                        shape: BoxShape.circle),
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
                        ChatTabView(),
                        StatusTabView(),
                        CallsTabView()
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
