import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

void main() => runApp(RandomColorApp());

class RandomColorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Random Color App',
        home: RandomColorHomePage()
    );
  }
}

class RandomColorHomePage extends StatefulWidget {
  @override
  _RandomColorHomePageState createState() => _RandomColorHomePageState();
}

class _RandomColorHomePageState extends State<RandomColorHomePage> {
  Color _currentColor = RandomColor().randomColor();

  @override
  void setState(fn) {
    _currentColor = RandomColor().randomColor();
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _currentColor.withAlpha(150),
      appBar: AppBar(
        title: Text('Random Color'),
        backgroundColor: _currentColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(('Current color'),
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
            Text(
              (getColorNameFromColor(_currentColor).getName),
              style: TextStyle(
                fontSize: 36,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        tooltip: 'Change color',
        child: Icon(Icons.colorize),
        backgroundColor: _currentColor,
      ),
    );
  }
}
