import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mokpe Tionary',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Mokpe Tionay'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AppBar _searchBar;
  AppBar _defaultBar;
  AppBar _appBar;
  bool _showSearchBar = false;

  @override
  Widget build(BuildContext context) {
    _defaultBar = AppBar(
      title: Text(
        'MOKPETIONARY',
        style: TextStyle(
            color: Color(0xff16609F),
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            setState(() {
              _showSearchBar = true;
            });
          },
          color: Color(0xff16609F),
          iconSize: 40,
        ),
      ],
      backgroundColor: Colors.white,
    );

    _searchBar = AppBar(
      title: Text(
        'Enter Search Text ...',
        style: TextStyle(color: Colors.blue),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            setState(() {
              _showSearchBar = false;
            });
          },
          color: Color(0xff16609F),
          iconSize: 40,
        ),
      ],
      backgroundColor: Colors.white,
    );
    _appBar = _showSearchBar ? _searchBar : _defaultBar;

    return Scaffold(
      appBar: _appBar,
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(50, 40, 50, 40),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.gamepad),
                              onPressed: null,
                            )
                          ],
                        ),
                        Row(
                          children: [Text("Word of the day")],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(50, 40, 50, 40),
                    child: Column(
                      children: [
                        Row(
                          children: [Text('Yes')],
                        ),
                        Row(
                          children: [Text("Verbs")],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(50, 40, 50, 40),
                    child: Column(
                      children: [
                        Row(
                          children: [Text('Yes')],
                        ),
                        Row(
                          children: [Text("Lessons")],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(50, 40, 50, 40),
                    child: Column(
                      children: [
                        Row(
                          children: [Text('Yes')],
                        ),
                        Row(
                          children: [Text("Settings")],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
