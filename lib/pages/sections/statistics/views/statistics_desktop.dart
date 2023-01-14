import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/developer_capabilities.dart';
import 'package:flutter_web_portfolio/pages/sections/statistics/widgets/static_item_widget.dart';

class StatisticsDesktop extends StatelessWidget {
  const StatisticsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
