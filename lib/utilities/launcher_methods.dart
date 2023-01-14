import 'package:flutter_web_portfolio/data/developer_info.dart';
import 'package:url_launcher/url_launcher.dart';

mixin LauncherMethods {
  static void downloadCV() {
    launchUrlFromString(DeveloperInfo.cv);
  }

  static Future<void> launchUrlFromString(String stringUrl) async {
    if (await canLaunchUrl(Uri.parse(stringUrl))) {
      await launchUrl(Uri.parse(stringUrl));
    } else {
      throw 'Could not launch $stringUrl';
    }
  }
}
