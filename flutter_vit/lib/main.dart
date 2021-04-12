import 'package:flutter/material.dart';
import 'package:flutter_vit/second_file.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Flutter',
      home: MyApp(),
    );
  }
}
