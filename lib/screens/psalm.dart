import 'package:flutter/material.dart';

class Psalm extends StatelessWidget {
  final int id;

  Psalm(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Salmo ' + id.toString()),
          ),
        ),
      ),
      body: Center(
        child: Text('Lorem ipsum dolor sit amet'),
      ),
    );
  }
}
