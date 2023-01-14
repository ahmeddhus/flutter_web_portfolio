import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/models/project.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/common_widgets/responsive_widget.dart';
import 'package:flutter_web_portfolio/utilities/launcher_methods.dart';

class FooterProjectItem extends StatelessWidget {
  final  Project project;
  const FooterProjectItem({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        LauncherMethods.launchUrlFromString(project.url!);
      },
      child: ResponsiveWidget(
        desktopScreen: Container(
          color: AppColors.greyLight,
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width * .1,
          height: MediaQuery.of(context).size.width * .1,
          child: Image.asset(project.image!),
        ),
        mobileScreen: Container(
          color: AppColors.greyLight,
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width * .2,
          height: MediaQuery.of(context).size.width * .2,
          child: Image.asset(project.image!),
        ),
      ),
    );
  }
}
