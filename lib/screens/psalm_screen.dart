import 'package:flutter/material.dart';

import 'package:psalmody/psalms_data.dart';

class Lyrics extends StatelessWidget {
  final List<String> verses;

  Lyrics(this.verses);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: ConstrainedBox(
            constraints: BoxConstraints(
//              minHeight: viewportConstraints.maxHeight,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                for (var verse in verses)
                  Center(
                    child: Text(
                      verse,
                      textScaleFactor: 1.25,
                      textAlign: TextAlign.center,
                    ),
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}

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
        child: Lyrics(selectedPsalm.lyrics),
      ),
    );
  }
}
