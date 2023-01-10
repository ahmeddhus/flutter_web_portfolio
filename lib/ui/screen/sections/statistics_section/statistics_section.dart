import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/models/statistics.dart';
import 'package:flutter_web_portfolio/ui/common_widgets/responsive_widget.dart';
import 'package:flutter_web_portfolio/ui/screen/sections/statistics_section/static_item_widget.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Statistics> statistics = [
      Statistics(
        iconPath: 'icons/briefcase.png',
        total: '4+',
        description: 'Years of Experience',
      ),
      Statistics(
        iconPath: 'icons/menu.png',
        //TODO: Add projects number
        total: '10+',
        description: 'Projects Done',
      ),
      Statistics(
        iconPath: 'icons/happy.png',
        total: '50+',
        description: 'Happy Clients',
      ),
      Statistics(
        iconPath: 'icons/coffee.png',
        total: '∞',
        description: 'Coffee Cups',
      ),
    ];

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
            ...statistics.map(
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
            ...statistics.map(
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
