import 'dart:math';

import 'package:flutter/material.dart';

class ImageName {
  List<String> names = [
    "Business",
    "Game",
    "Music",
    "Business",
    "Movies",
    "Design",
  ];

  List<IconData> icons = [
    Icons.local_mall,
    Icons.gamepad_rounded,
    Icons.keyboard_voice,
    Icons.videocam,
    Icons.create,
  ];

  List<String> trending = ["Business", "Design"];
  List<String> soz = [
    "Top tools to help\n your meeting",
    "Easiest way to make\ndeliverable design"
  ];
  List<String> hours = ["2 Hours Ago", "4 Hour Ago"];
  List<Color> rang = [Colors.blue, Colors.orange];
}

class Page2 {
  List<String> names = [
    "Business",
    "Music",
    "Movies",
  ];

  List<Color> colors = [
    Colors.blue,
    Colors.black54,
    Colors.grey,
  ];

  List<String> malumot = [
    "Top tools to help\nyour meeting",
    "Iwan Fals start writing\nhis latest music",
    "Blockbuster movie on\nthis year",
  ];

  List min = List.generate(3, (index) => Random().nextInt(5));
}
