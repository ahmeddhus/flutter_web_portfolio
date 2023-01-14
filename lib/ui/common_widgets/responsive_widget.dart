import 'package:flutter/material.dart';

class ResponsiveWidget extends StatefulWidget {
  final Widget? desktopScreen;
  final Widget? tabletScreen;
  final Widget? mobileScreen;

  const ResponsiveWidget({Key? key, this.desktopScreen, this.tabletScreen, this.mobileScreen})
      : super(key: key);

  @override
  State<ResponsiveWidget> createState() => _ResponsiveWidgetState();
}

class _ResponsiveWidgetState extends State<ResponsiveWidget> {
  late double screenWidth;

  @override
  void didChangeDependencies() {
    screenWidth = MediaQuery.of(context).size.width;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (screenWidth > 950) {
      return widget.desktopScreen ?? widget.tabletScreen ?? widget.mobileScreen!;
    }
    if (screenWidth > 600) {
      return widget.tabletScreen ?? widget.mobileScreen ?? widget.desktopScreen!;
    }

    return widget.mobileScreen ?? widget.tabletScreen ?? widget.desktopScreen!;
  }
}
