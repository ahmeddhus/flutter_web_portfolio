import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/developer_capabilities.dart';
import 'package:flutter_web_portfolio/theme/app_styles.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/pages/sections/working_process/widgets/working_process_item_widget.dart';

class WorkingProcessDesktop extends StatelessWidget {
  const WorkingProcessDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .15,
        vertical: 100,
      ),
      child: Column(
        children: [
          Text('WORKING PROCESS', style: AppStyles.title),
          Container(
            width: 100,
            height: 2,
            color: AppColors.yellow,
          ),
          const SizedBox(height: 3),
          Container(
            width: 75,
            height: 2,
            color: AppColors.yellow,
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...DeveloperCapabilities.workingProcess.map(
                    (e) => Expanded(
                  child: WorkingProcessItemWidget(
                    index: e.index,
                    iconPath: e.iconPath,
                    title: e.title,
                    description: e.description,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
