import 'package:flutter_lorem/flutter_lorem.dart';
import 'dart:math' as math;

const List<String> colors = [
  "green",
  "red",
  "orange",
  "yellow",
  "blue",
  "pink",
  "cyan",
  "magenta",
  "coral",
  "brown"
];

class Mock {
  static String title() {
    return lorem(paragraphs:1, words: 3).replaceAll(".", "");
  }

  static String author() {
    return lorem(paragraphs:1, words: 2).replaceAll(".", "");
  }

  static String description() {
    return lorem(paragraphs:1, words: 700).replaceAll(".", "");
  }

  static String imageUrl() {
    return 'https://placehold.co/120x160/'
        '${colors[math.Random().nextInt(colors.length)]}'
        '/${colors[math.Random().nextInt(colors.length)]}.png';
  }
}
