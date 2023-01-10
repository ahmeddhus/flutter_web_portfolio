import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/ui/common_widgets/app_icon.dart';
import 'package:flutter_web_portfolio/ui/common_widgets/responsive_widget.dart';

class StatisticsItemWidget extends StatelessWidget {
  final String iconPath;
  final String total;
  final String description;

  const StatisticsItemWidget({
    required this.iconPath,
    required this.total,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcon(iconPath, size: 50),
          const SizedBox(height: 5),
          Text(
            total,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      mobileScreen: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcon(iconPath, size: 40),
          const SizedBox(height: 5),
          Text(
            total,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}