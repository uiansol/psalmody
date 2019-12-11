import 'package:flutter/material.dart';

import 'package:psalmody/widgets/psalm.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var psalmNumbers = new List<int>.generate(150, (i) => i + 1);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('Salmodiai'),
        ),
      ),
      body: Center(
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: psalmNumbers.map((number) => PsalmItem(number)).toList(),
        ),
      ),
    );
  }
}
