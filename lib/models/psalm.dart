import 'package:flutter/foundation.dart';

class Psalm {
  final int id;
  final String title;
  final List<String> lyrics;

  const Psalm({
    @required this.id,
    @required this.title,
    @required this.lyrics,
  });
}
