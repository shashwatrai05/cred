import 'package:flutter/material.dart';
import 'container1.dart';
import 'container2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStackedContainers(),
    );
  }
}

class MyStackedContainers extends StatefulWidget {
  @override
  _MyStackedContainersState createState() => _MyStackedContainersState();
}

class _MyStackedContainersState extends State<MyStackedContainers> {
  bool _isContainer2Visible = false;

  void _openContainer2() {
    setState(() {
      _isContainer2Visible = true;
    });
  }

  void _popContainer2() {
    setState(() {
      _isContainer2Visible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stacked Containers'),
      ),
      body: Stack(
        children: [
          Container1(
            onOpenContainer2: _openContainer2,
          ),
          if (_isContainer2Visible)
            Container2(
              onPopContainer2: _popContainer2,
            ),
        ],
      ),
    );
  }
}