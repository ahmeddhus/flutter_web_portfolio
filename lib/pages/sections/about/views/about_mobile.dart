import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/developer_capabilities.dart';
import 'package:flutter_web_portfolio/theme/app_styles.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/data/developer_info.dart';
import 'package:flutter_web_portfolio/utilities/launcher_methods.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

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
          ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: Container(
              color: AppColors.greyLight,
              child: Image.asset(
                DeveloperInfo.avatar,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'ABOUT ME',
            style: TextStyle(
              color: AppColors.yellow,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            DeveloperInfo.description,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Colors.black.withOpacity(.7),
                  fontSize: 13,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: AppStyles.elevatedButtonYellowStyle,
            onPressed: () {},
            child: const Text('HIRE ME NOW'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: AppStyles.elevatedButtonBlackStyle,
            onPressed: LauncherMethods.downloadCV,
            child: const Text('VIEW RESUME'),
          ),
          const SizedBox(height: 50),
          Text('MY SKILLS', style: AppStyles.title),
          Container(width: 75, height: 2, color: AppColors.yellow),
          const SizedBox(height: 3),
          Container(width: 50, height: 2, color: AppColors.yellow),
          const SizedBox(height: 25),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.spaceBetween,
            children: DeveloperCapabilities.skills.map((e) => Chip(label: Text(e))).toList(),
          ),
        ],
      ),
    );
  }
}
