import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';

mixin AppStyles {
  static final ButtonStyle textButtonStyle = TextButton.styleFrom(
    backgroundColor: AppColors.yellow,
    padding: const EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 15,
    ),
  );

  static final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.yellow,
    padding: const EdgeInsets.symmetric(
      horizontal: 30,
      vertical: 20,
    ),
  );

  static final TextStyle title = TextStyle(
    color: AppColors.black.withOpacity(.8),
    fontSize: 35,
    fontWeight: FontWeight.w700,
  );
}
