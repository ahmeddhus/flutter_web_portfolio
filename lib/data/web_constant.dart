import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/pages/sections/about/about_section.dart';
import 'package:flutter_web_portfolio/pages/sections/contact_us/contact_us_section.dart';
import 'package:flutter_web_portfolio/pages/sections/footer/footer_section.dart';
import 'package:flutter_web_portfolio/pages/sections/projects/projects_section.dart';
import 'package:flutter_web_portfolio/pages/sections/statistics/statistics_section.dart';
import 'package:flutter_web_portfolio/pages/sections/working_process/working_process_section.dart';

mixin WebConstants {
  static const List<Widget> sections = [
    AboutSection(),
    StatisticsSection(),
    WorkingProcessSection(),
    ProjectsSection(),
    ContactUsSection(),
    FooterSections(),
  ];
}

