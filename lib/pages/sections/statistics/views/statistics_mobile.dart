import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/developer_capabilities.dart';
import 'package:flutter_web_portfolio/pages/sections/statistics/widgets/static_item_widget.dart';

class StatisticsMobile extends StatelessWidget {
  const StatisticsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
