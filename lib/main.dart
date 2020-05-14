import 'package:flutter/material.dart';
import 'package:flutter3deffectdemo/sample1.dart';
import 'package:flutter3deffectdemo/sample2.dart';
import 'package:flutter3deffectdemo/sample3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _onTap(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => page,
    ));
  }

  @override
  Widget build(BuildContext context) {
    const separator = const SizedBox(
      height: 15,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Examples"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Whole Page TRansition
            RaisedButton(
              child: Text("Navigator Cube Transition"),
              onPressed: () => _onTap(context, Sample1()),
            ),
            separator,
            // objects of the page tranisition in sequence
            RaisedButton(
              child: Text("PageView Cube Transition"),
              onPressed: () => _onTap(context, Sample2()),
            ),
            separator,
            // objects into this page with multiple widgets transition
            RaisedButton(
              child: Text("PageView Cube Transition Custom"),
              onPressed: () => _onTap(context, Sample3()),
            ),
          ],
        ),
      ),
    );
  }
}
