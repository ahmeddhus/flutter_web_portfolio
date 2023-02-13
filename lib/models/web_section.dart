import 'package:flutter/material.dart';

class WebSection {
  final String title;
  final Widget widget;
  final VoidCallback onTap;

  WebSection({
    required this.title,
    required this.widget,
    required this.onTap,
  });
}
