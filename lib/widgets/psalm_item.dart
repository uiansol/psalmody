import 'package:flutter/material.dart';

import 'package:psalmody/screens/psalm_screen.dart';

class PsalmItem extends StatelessWidget {
  final int id;

  PsalmItem(this.id);

  void selectPsalm(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>Psalm(id)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectPsalm(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(
              id.toString(),
              style:
                  DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5),
            ),
          ),
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
