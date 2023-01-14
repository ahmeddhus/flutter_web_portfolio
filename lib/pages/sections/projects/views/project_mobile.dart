import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/developer_capabilities.dart';
import 'package:flutter_web_portfolio/theme/app_styles.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/pages/sections/projects/widgets/project_item_widget.dart';

class ProjectMobile extends StatelessWidget {
  const ProjectMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.greyLight,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .15,
        vertical: 50,
      ),
      child: Column(
        children: [
          Text(
            'MY PROJECTS',
            style: AppStyles.title,
            textAlign: TextAlign.center,
          ),
          Container(width: 75, height: 2, color: AppColors.yellow),
          const SizedBox(height: 3),
          Container(width: 50, height: 2, color: AppColors.yellow),
          const SizedBox(height: 50),
          Wrap(
            spacing: 5,
            runSpacing: 5,
            children: DeveloperCapabilities.projects
                .map(
                  (p) => ProjectItemWidget(
                project: p,
              ),
            )
                .toList(),
          ),
        ],
      ),
    );
  }
}
