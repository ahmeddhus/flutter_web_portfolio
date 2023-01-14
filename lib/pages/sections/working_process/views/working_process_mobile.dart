import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/developer_capabilities.dart';
import 'package:flutter_web_portfolio/theme/app_styles.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/pages/sections/working_process/widgets/working_process_item_widget.dart';

class WorkingProcessMobile extends StatelessWidget {
  const WorkingProcessMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .15,
        vertical: 50,
      ),
      child: Column(
        children: [
          Text(
            'WORKING PROCESS',
            style: AppStyles.title,
            textAlign: TextAlign.center,
          ),
          Container(width: 75, height: 2, color: AppColors.yellow),
          const SizedBox(height: 3),
          Container(width: 50, height: 2, color: AppColors.yellow),
          const SizedBox(height: 50),
          ...DeveloperCapabilities.workingProcess.map(
                (e) => WorkingProcessItemWidget(
              index: e.index,
              iconPath: e.iconPath,
              title: e.title,
              description: e.description,
            ),
          ),
        ],
      ),
    );
  }
}
