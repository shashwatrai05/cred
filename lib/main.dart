import 'package:cred/container3.dart';
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
      home: Container3(),
    );
  }
}

class MyStackedContainers extends StatefulWidget {
  @override
  _MyStackedContainersState createState() => _MyStackedContainersState();
}

class _MyStackedContainersState extends State<MyStackedContainers> {
  bool _isContainer1Expanded = true;
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

  void _openContainer1() {
    setState(() {
      _isContainer1Expanded = true;
    });
  }
void _closeContainer2() {
  setState(() {
    _isContainer2Visible = false;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      
      body: Stack(
        children: [
          Container1(
  onOpenContainer2: _openContainer2,
  onCloseContainer2: _closeContainer2, // Pass the new callback
  //isExpanded: _isContainer1Expanded,
),

          if (_isContainer2Visible)
            Container2(
              onPopContainer2: _popContainer2,
              onOpenContainer1: _openContainer1,
            ),
        ],
      ),
    );
  }
}