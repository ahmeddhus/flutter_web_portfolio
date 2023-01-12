import 'package:flutter_web_portfolio/models/contact_info.dart';

mixin DeveloperInfo {
  static const String avatar = 'images/ahmeddhus.jpg';

  static const String name = 'Ahmed Hussein';

  static const String job = 'Flutter Developer';

  static const String description =
      'Skilled Flutter developer with a strong foundation in native Android development. Proficient in Java, Kotlin, and Dart, with experience in integrating with RESTful APIs and Agile development methodologies. Passionate about creating intuitive, user-friendly mobile experiences.';

  static const String mail = 'ahmeddhus@gmail.com';

  static const String mobileNumber = '(+20) 10 24 855 114';

  static const String location = 'Alexandria, Egypt';

  static const String github = 'https://github.com/ahmeddhus';

  static const String linkedin = 'https://www.linkedin.com/in/ahmeddhus/';

  static const String twitter = 'https://twitter.com/ahmeddhus';

  static const String youtube = 'https://www.youtube.com/@groovex7470';

  static const String cv =
      'https://drive.google.com/file/d/1wP4-2VSj25AbLu7Sp7a37UjRvFqo48A3/view?usp=sharing';

  static final List<ContactInfo> contactInfo = [
    ContactInfo(
      imagePath: 'icons/email.png',
      title: 'Mail Us:',
      content: DeveloperInfo.mail,
    ),
    ContactInfo(
      imagePath: 'icons/call.png',
      title: 'Call Us:',
      content: DeveloperInfo.mobileNumber,
    ),
    ContactInfo(
      imagePath: 'icons/pin.png',
      title: 'Visit Us:',
      content: DeveloperInfo.location,
    ),
  ];
}
