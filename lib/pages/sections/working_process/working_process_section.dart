import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/pages/sections/working_process/views/working_process_desktop.dart';
import 'package:flutter_web_portfolio/pages/sections/working_process/views/working_process_mobile.dart';
import 'package:flutter_web_portfolio/common_widgets/responsive_widget.dart';

class WorkingProcessSection extends StatelessWidget {
  const WorkingProcessSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      desktopScreen: WorkingProcessDesktop(),
      mobileScreen: WorkingProcessMobile(),
    );
  }
}
