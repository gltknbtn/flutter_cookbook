import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = 'Grid List By Gltkn';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 2, // two columns
          children: List.generate(100, (index) {
            return Center(
              child: Text('Item $index', style: Theme.of(context).textTheme.headline5),
            );
          }),
        ),
      ),
    );
  }
}
