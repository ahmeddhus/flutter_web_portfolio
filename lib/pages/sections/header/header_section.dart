import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/pages/sections/header/views/header_desktop.dart';
import 'package:flutter_web_portfolio/pages/sections/header/views/header_mobile.dart';
import 'package:flutter_web_portfolio/common_widgets/responsive_widget.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      desktopScreen: HeaderDesktop(),
      mobileScreen: HeaderMobile(),
    );
  }
}
