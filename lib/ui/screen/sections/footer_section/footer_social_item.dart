import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/models/website.dart';
import 'package:flutter_web_portfolio/ui/common_widgets/app_icon.dart';
import 'package:flutter_web_portfolio/utilities/launcher_methods.dart';

class FooterSocialItem extends StatelessWidget {
  final Website website;

  const FooterSocialItem({Key? key, required this.website}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () async {
          LauncherMethods.launchUrlFromString(website.url);
        },
        child: AppIcon(website.iconPath),
      ),
    );
  }
}
