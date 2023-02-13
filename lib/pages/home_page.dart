import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/common_widgets/responsive_widget.dart';
import 'package:flutter_web_portfolio/pages/views/home_desktop_view.dart';
import 'package:flutter_web_portfolio/pages/views/home_mobile_view.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      desktopScreen: HomeDesktopView(),
      mobileScreen: HomeMobileView(),
    );
  }
}
