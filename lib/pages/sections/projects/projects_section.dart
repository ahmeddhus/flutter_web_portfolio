import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/pages/sections/projects/views/project_desktop.dart';
import 'package:flutter_web_portfolio/pages/sections/projects/views/project_mobile.dart';
import 'package:flutter_web_portfolio/common_widgets/responsive_widget.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      desktopScreen: ProjectDesktop(),
      mobileScreen: ProjectMobile(),
    );
  }
}
