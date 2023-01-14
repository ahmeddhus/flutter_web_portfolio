import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/common_widgets/responsive_widget.dart';
import 'package:flutter_web_portfolio/pages/sections/statistics/views/statistics_desktop.dart';
import 'package:flutter_web_portfolio/pages/sections/statistics/views/statistics_mobile.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      desktopScreen: StatisticsDesktop(),
      mobileScreen: StatisticsMobile(),
    );
  }
}
