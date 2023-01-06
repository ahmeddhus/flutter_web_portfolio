import 'package:flutter_web_portfolio/utilities/constants.dart';
import 'package:url_launcher/url_launcher.dart';

mixin LauncherMethods{
  static void downloadCV() {
    launchUrl(Uri.parse(DeveloperInfo.cv));
  }
}

