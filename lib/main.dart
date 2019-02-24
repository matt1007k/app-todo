import 'package:flutter/material.dart';
import 'login.dart';
import 'stacked_icons.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new StackedIcons(),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: new Text(
                    'App Todo',
                    style: new TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 10.0, top: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          // Go page login
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                          ));
                        },
                        child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFF18D191),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: new Text(
                            'Sign In With Email',
                            style: new TextStyle(
                                fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      )),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 5.0, top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(
                          color: Color(0xFF4364A1),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: new Text(
                        'FaceBook',
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10.0, top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(
                          color: Color(0xFFDF5138),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: new Text(
                        'Google',
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
