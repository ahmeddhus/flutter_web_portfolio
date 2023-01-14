import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/developer_capabilities.dart';
import 'package:flutter_web_portfolio/common_widgets/responsive_widget.dart';
import 'package:flutter_web_portfolio/pages/sections/statistics/widgets/static_item_widget.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        height: 400,
        color: Colors.black.withOpacity(.7),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...DeveloperCapabilities.statistics.map(
              (e) => StatisticsItemWidget(
                iconPath: e.iconPath,
                total: e.total,
                description: e.description,
              ),
            ),
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.black54,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            ...DeveloperCapabilities.statistics.map(
              (e) => StatisticsItemWidget(
                iconPath: e.iconPath,
                total: e.total,
                description: e.description,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
