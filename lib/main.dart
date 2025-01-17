import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.cover,
              child: SizedBox(
                width: 1152,
                height: 750,
                child: Image(
                  image: AssetImage(
                    'assets/trees_bg.png',
                  ),
                ),
              ),
            ),
          ),
          SizedBox.expand(
            child: FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.contain,
              child: SizedBox(
                width: 1152,
                height: 750,
                child: FlareActor(
                  "assets/intro.flr",
                  animation: "Open",
                ),
              ),
            ),
          ),
          SizedBox.expand(
            child: FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.cover,
              child: SizedBox(
                width: 1152,
                height: 750,
                child: Image(
                  image: AssetImage(
                    'assets/trees_trans.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
