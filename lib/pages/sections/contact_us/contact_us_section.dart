import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/pages/sections/contact_us/views/contact_us_desktop.dart';
import 'package:flutter_web_portfolio/pages/sections/contact_us/views/contact_us_mobile.dart';
import 'package:flutter_web_portfolio/common_widgets/responsive_widget.dart';

class ContactUsSection extends StatelessWidget {
  const ContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      desktopScreen: ContactUsDesktop(),
      mobileScreen: ContactUsMobile(),
    );
  }
}
