import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/pages/sections/footer/widgets/footer_social_item.dart';
import 'package:flutter_web_portfolio/theme/app_styles.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/data/developer_info.dart';
import 'package:flutter_web_portfolio/utilities/launcher_methods.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
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
          const SizedBox(height: 40),
          Row(
            children: [
              ElevatedButton(
                style: AppStyles.elevatedButtonYellowStyle,
                onPressed: LauncherMethods.downloadCV,
                child: const Text(
                  'Download CV',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 30),
              Row(
                  children: DeveloperInfo.websites
                      .map((e) => FooterSocialItem(
                            website: e,
                          ))
                      .toList()),
            ],
          ),
          const SizedBox(height: 70),
        ],
      ),
    );
  }
}
