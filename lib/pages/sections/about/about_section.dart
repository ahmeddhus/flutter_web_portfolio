import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/pages/sections/about/views/about_desktop.dart';
import 'package:flutter_web_portfolio/pages/sections/about/views/about_mobile.dart';
import 'package:flutter_web_portfolio/common_widgets/responsive_widget.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      desktopScreen: AboutDesktop(),
      mobileScreen: AboutMobile(),
    );
  }
}
