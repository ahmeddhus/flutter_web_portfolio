import 'package:flutter_web_portfolio/models/web_section.dart';
import 'package:flutter_web_portfolio/pages/sections/about/about_section.dart';
import 'package:flutter_web_portfolio/pages/sections/contact_us/contact_us_section.dart';
import 'package:flutter_web_portfolio/pages/sections/footer/footer_section.dart';
import 'package:flutter_web_portfolio/pages/sections/projects/projects_section.dart';
import 'package:flutter_web_portfolio/pages/sections/statistics/statistics_section.dart';
import 'package:flutter_web_portfolio/pages/sections/working_process/working_process_section.dart';

class WebSections {
  final bool getHeaderComponent;

  WebSections() : getHeaderComponent = false;

  WebSections.header() : getHeaderComponent = true;

  List<WebSection> get sections => [
        WebSection(
          title: 'About Me',
          widget: const AboutSection(),
          onTap: () {},
        ),
        WebSection(
          title: 'Experience',
          widget: const StatisticsSection(),
          onTap: () {},
        ),
        WebSection(
          title: 'Process',
          widget: const WorkingProcessSection(),
          onTap: () {},
        ),
        WebSection(
          title: 'Projects',
          widget: const ProjectsSection(),
          onTap: () {},
        ),
        if (!getHeaderComponent)
          WebSection(
            title: 'Contact Me',
            widget: const ContactUsSection(),
            onTap: () {},
          ),
        if (!getHeaderComponent)
          WebSection(
            title: 'Footer',
            widget: const FooterSections(),
            onTap: () {},
          ),
      ];
}
