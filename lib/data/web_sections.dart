import 'package:flutter/cupertino.dart';
import 'package:flutter_web_portfolio/models/web_section_helper.dart';
import 'package:flutter_web_portfolio/pages/sections/about/about_section.dart';
import 'package:flutter_web_portfolio/pages/sections/contact_us/contact_us_section.dart';
import 'package:flutter_web_portfolio/pages/sections/footer/footer_section.dart';
import 'package:flutter_web_portfolio/pages/sections/projects/projects_section.dart';
import 'package:flutter_web_portfolio/pages/sections/statistics/statistics_section.dart';
import 'package:flutter_web_portfolio/pages/sections/working_process/working_process_section.dart';

class WebSectionsHelper {
  WebSectionsHelper._(){
    initGlobalKeys();
  }

  static WebSectionsHelper get instance => _instance;

  static final WebSectionsHelper _instance = WebSectionsHelper._();

  void initGlobalKeys() {
    aboutSectionKey = GlobalKey();
    statisticsSectionKey = GlobalKey();
    workingProcessSectionKey = GlobalKey();
    projectsSectionKey = GlobalKey();
    contactUsSectionKey = GlobalKey();
    footerSectionKey = GlobalKey();
  }

  late GlobalKey aboutSectionKey;

  late GlobalKey statisticsSectionKey;

  late GlobalKey workingProcessSectionKey;

  late GlobalKey projectsSectionKey;

  late GlobalKey contactUsSectionKey;

  late GlobalKey footerSectionKey;

  List<WebSection> sections({bool showHeaderComponent = false}) {
    return [
      WebSection(
        globalKey: aboutSectionKey,
        title: 'About Me',
        widget: const AboutSection(),
      ),
      WebSection(
        globalKey: statisticsSectionKey,
        title: 'Experience',
        widget: const StatisticsSection(),
      ),
      WebSection(
        globalKey: workingProcessSectionKey,
        title: 'Process',
        widget: const WorkingProcessSection(),
      ),
      WebSection(
        globalKey: projectsSectionKey,
        title: 'Projects',
        widget: const ProjectsSection(),
      ),
      if (!showHeaderComponent)
        WebSection(
          globalKey: contactUsSectionKey,
          title: 'Contact Me',
          widget: const ContactUsSection(),
        ),
      if (!showHeaderComponent)
        WebSection(
          globalKey: footerSectionKey,
          title: 'Footer',
          widget: const FooterSections(),
        ),
    ];
  }
}
