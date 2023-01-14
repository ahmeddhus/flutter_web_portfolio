import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/developer_capabilities.dart';
import 'package:flutter_web_portfolio/theme/app_styles.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/pages/sections/projects/widgets/project_item_widget.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.greyLight,
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: [
          Text('MY PROJECTS', style: AppStyles.title),
          Container(width: 100, height: 2, color: AppColors.yellow),
          const SizedBox(height: 3),
          Container(width: 75, height: 2, color: AppColors.yellow),
          const SizedBox(height: 50),
          ...DeveloperCapabilities.projects.map(
                (p) => ProjectItemWidget(
              project: p,
            ),
          ),
        ],
      ),
    );
  }
}
