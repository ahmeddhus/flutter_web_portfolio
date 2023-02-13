import 'package:flutter/material.dart';

class WebSection {
  final String title;
  final Widget widget;
  final VoidCallback onTap;
  final bool showInHeaderBar;
  final bool coloredButton;

  WebSection({
    required this.title,
    required this.widget,
    required this.onTap,
    this.showInHeaderBar = true,
    this.coloredButton = false,
  });
}
