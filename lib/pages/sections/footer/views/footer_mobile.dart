import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/developer_capabilities.dart';
import 'package:flutter_web_portfolio/data/developer_info.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/pages/sections/footer/widgets/footer_project_item.dart';
import 'package:flutter_web_portfolio/pages/sections/footer/widgets/footer_social_item.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .15,
        vertical: 30,
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 2,
                    height: 20,
                    color: AppColors.yellow,
                  ),
                  const SizedBox(width: 7.5),
                  const Text(
                    'GET IN TOUCH',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                DeveloperInfo.getInTouchMessage,
                style: TextStyle(
                  color: AppColors.greyLight,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Email Address',
                style: TextStyle(
                  color: AppColors.greyLight,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 7),
              Text(
                DeveloperInfo.mail,
                style: TextStyle(
                  color: AppColors.greyLight,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Phone Number',
                style: TextStyle(
                  color: AppColors.greyLight,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 7),
              Text(
                DeveloperInfo.mobileNumber,
                style: TextStyle(
                  color: AppColors.greyLight,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Location',
                style: TextStyle(
                  color: AppColors.greyLight,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 7),
              Text(
                DeveloperInfo.location,
                style: TextStyle(
                  color: AppColors.greyLight,
                  fontSize: 13,
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          // Aout me
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 2,
                    height: 20,
                    color: AppColors.yellow,
                  ),
                  const SizedBox(width: 7.5),
                  const Text(
                    'ABOUT ME',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                DeveloperInfo.description,
                style: TextStyle(
                  color: AppColors.greyLight,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          // My projects
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 2,
                    height: 20,
                    color: AppColors.yellow,
                  ),
                  const SizedBox(width: 7.5),
                  const Text(
                    'RECENT PROJECTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: DeveloperCapabilities.projects
                    .take(4)
                    .map((p) => FooterProjectItem(
                          project: p,
                        ))
                    .toList(),
              )
            ],
          ),
          const SizedBox(height: 30),
          Divider(
            color: AppColors.greyLight!.withOpacity(.75),
            thickness: .5,
          ),
          const SizedBox(height: 20),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: DeveloperInfo.websites
                  .map((e) => FooterSocialItem(
                        website: e,
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Proudly powered by ${DeveloperInfo.name} ©${DateTime.now().year}',
            style: TextStyle(
              color: AppColors.greyLight!.withOpacity(.75),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
