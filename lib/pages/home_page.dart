import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/common_widgets/responsive_widget.dart';
import 'package:flutter_web_portfolio/pages/home_page_views/home_desktop_view.dart';
import 'package:flutter_web_portfolio/pages/home_page_views/home_mobile_view.dart';
import 'package:flutter_web_portfolio/pages/sections/about/about_section.dart';
import 'package:flutter_web_portfolio/pages/sections/contact_us/contact_us_section.dart';
import 'package:flutter_web_portfolio/pages/sections/footer/footer_section.dart';
import 'package:flutter_web_portfolio/pages/sections/projects/projects_section.dart';
import 'package:flutter_web_portfolio/pages/sections/statistics/statistics_section.dart';
import 'package:flutter_web_portfolio/pages/sections/working_process/working_process_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  List<Widget> _sections() => [
        const SliverToBoxAdapter(
          child: AboutSection(),
        ),
        const SliverToBoxAdapter(
          child: StatisticsSection(),
        ),
        const SliverToBoxAdapter(
          child: WorkingProcessSection(),
        ),
        const SliverToBoxAdapter(
          child: ProjectsSection(),
        ),
        const SliverToBoxAdapter(
          child: ContactUsSection(),
        ),
        const SliverToBoxAdapter(
          child: FooterSections(),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: HomeDesktopView(sections: _sections()),
      mobileScreen: HomeMobileView(sections: _sections()),
    );
  }
}
