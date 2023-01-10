import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/theme/app_styles.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/ui/common_widgets/responsive_widget.dart';
import 'package:flutter_web_portfolio/data/developer_info.dart';
import 'package:flutter_web_portfolio/utilities/launcher_methods.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'I’m ${DeveloperInfo.name}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              DeveloperInfo.job,
              style: TextStyle(
                color: AppColors.yellow,
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Text(
                DeveloperInfo.description,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.grey[100],
                      fontSize: 17,
                    ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: AppStyles.elevatedButtonYellowStyle,
              onPressed: LauncherMethods.downloadCV,
              child: const Text(
                'Download CV',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
      mobileScreen: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
        ),
        child: FittedBox(
          child: Column(
            children: [
              const Text(
                'I’m ${DeveloperInfo.name}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                DeveloperInfo.job,
                style: TextStyle(
                  color: AppColors.yellow,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  DeveloperInfo.description,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.grey[100],
                        fontSize: 15,
                        height: 1.8,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: AppStyles.elevatedButtonYellowStyle,
                onPressed: LauncherMethods.downloadCV,
                child: const Text(
                  'Download CV',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
