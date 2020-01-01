import 'package:flutter/material.dart';

import 'package:psalmody/psalms_data.dart';

class Psalm extends StatelessWidget {
  final int id;

  Psalm(this.id);

  @override
  Widget build(BuildContext context) {
    final selectedPsalm = PSALMS_DATA.firstWhere((psalm) => psalm.id == id);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(selectedPsalm.title),
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            for (var verse in selectedPsalm.lyrics)
              Center(
                child: Text(
                  verse,
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.center,
                ),
              )
          ],
        ),
      ),
//      body: Center(
//        child: Text(selectedPsalm.lyrics[0]),
//      ),
    );
  }
}
