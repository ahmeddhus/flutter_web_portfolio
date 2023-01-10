import 'package:flutter_web_portfolio/data/developer_info.dart';
import 'package:url_launcher/url_launcher.dart';

mixin LauncherMethods{
  static void downloadCV() {
    launchUrl(Uri.parse(DeveloperInfo.cv));
  }
}

