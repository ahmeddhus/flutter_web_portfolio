import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/ui/screen/sections/contact_us_section/contact_form_widget.dart';
import 'package:flutter_web_portfolio/ui/screen/sections/contact_us_section/contact_info_widget.dart';
import 'package:flutter_web_portfolio/data/developer_info.dart';
import 'package:flutter_web_portfolio/theme/app_styles.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/ui/common_widgets/responsive_widget.dart';

class ContactUsSection extends StatelessWidget {
  const ContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text('GET IN TOUCH', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: DeveloperInfo.contactInfo
                        .map(
                          (e) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            child: ContactInfoWidget(
                              imagePath: e.imagePath,
                              title: e.title,
                              content: e.content,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                const Expanded(
                  child: ContactFormWidget(),
                ),
              ],
            )
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text(
              'GET IN TOUCH',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: DeveloperInfo.contactInfo
                      .map(
                        (e) => Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: ContactInfoWidget(
                            imagePath: e.imagePath,
                            title: e.title,
                            content: e.content,
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 50),
                const ContactFormWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
