import 'package:flutter/material.dart';

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
  int _currentContainer = 1;

  void _openContainer(int containerNumber) {
    setState(() {
      _currentContainer = containerNumber;
    });
  }

  void _popContainer() {
    if (_currentContainer > 1) {
      setState(() {
        _currentContainer -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stacked Containers'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 100.0,
            child: Center(
              child: ElevatedButton(
                onPressed: () => _openContainer(1),
                child: Text('Open Container 1'),
              ),
            ),
          ),
          if (_currentContainer >= 2)
            Positioned(
              top: 80.0,
              child: Container(
                color: Colors.green,
                height: 80.0,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () => _openContainer(2),
                    child: Text('Open Container 2'),
                  ),
                ),
              ),
            ),
          if (_currentContainer >= 3)
            Positioned(
              top: 160.0,
              child: Container(
                color: Colors.orange,
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () => _openContainer(3),
                    child: Text('Open Container 3'),
                  ),
                ),
              ),
            ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: _popContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
