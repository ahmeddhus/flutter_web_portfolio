import 'package:flutter/material.dart';

class WebSection {
  final GlobalKey globalKey;
  final String title;
  final Widget widget;

  WebSection({
    required this.globalKey,
    required this.title,
    required this.widget,
  });
}
