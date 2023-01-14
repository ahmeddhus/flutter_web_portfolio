import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/pages/sections/footer/views/footer_desktop.dart';
import 'package:flutter_web_portfolio/pages/sections/footer/views/footer_mobile.dart';
import 'package:flutter_web_portfolio/common_widgets/responsive_widget.dart';

class FooterSections extends StatelessWidget {
  const FooterSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      desktopScreen: FooterDesktop(),
      mobileScreen: FooterMobile(),
    );
  }
}
