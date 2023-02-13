import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/common_widgets/responsive_widget.dart';
import 'package:flutter_web_portfolio/data/web_constant.dart';
import 'package:flutter_web_portfolio/pages/views/home_desktop_view.dart';
import 'package:flutter_web_portfolio/pages/views/home_mobile_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      desktopScreen: HomeDesktopView(sections: WebConstants.sections),
      mobileScreen: HomeMobileView(sections: WebConstants.sections),
    );
  }
}
