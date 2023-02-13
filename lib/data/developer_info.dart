import 'package:flutter_web_portfolio/models/contact_info.dart';
import 'package:flutter_web_portfolio/models/website.dart';

mixin DeveloperInfo {
  static const String avatar = 'images/ahmeddhus.jpg';

  static const String name = 'Ahmed Hussein';

  static const String job = 'Software Engineer';

  static const String description =
      'Software engineer with expertise in the Flutter framework and a strong background in Android development plus a proven track record of delivering high-quality software projects. Deep understanding of Object-Oriented Programming (OOP) and design patterns, which enables me to create efficient and scalable solutions for complex problems. My passion for technology and innovation drives me to continuously improve my skills, share my knowledge with the community and stay up-to-date with the latest industry advancements.';

  static const String getInTouchMessage =
      'You have an idea, I am here to turn your dream into real digital solution.';

  static const String mail = 'ahmeddhus@gmail.com';

  static const String mobileNumber = '(+20) 10 24 855 114';

  static const String location = 'Alexandria, Egypt';

  static const String github = 'https://github.com/ahmeddhus';

  static const String linkedin = 'https://www.linkedin.com/in/ahmeddhus/';

  static const String twitter = 'https://twitter.com/ahmeddhus';

  static const String medium = 'https://medium.com/@ahmeddhus';

  static const String youtube = 'https://www.youtube.com/@groovex7470';

  static const String cv =
      'https://drive.google.com/file/d/1wP4-2VSj25AbLu7Sp7a37UjRvFqo48A3/view?usp=sharing';

  static final List<Website> websites = [
    Website(
      iconPath: 'icons/github.png',
      url: DeveloperInfo.github,
    ),
    Website(
      iconPath: 'icons/linkedin.png',
      url: DeveloperInfo.linkedin,
    ),
    Website(
      iconPath: 'icons/twitter.png',
      url: DeveloperInfo.twitter,
    ),
    Website(
      iconPath: 'icons/medium.png',
      url: DeveloperInfo.medium,
    ),
    Website(
      iconPath: 'icons/youtube.png',
      url: DeveloperInfo.youtube,
    ),
  ];

  static final List<ContactInfo> contactInfo = [
    ContactInfo(
      imagePath: 'icons/email.png',
      title: 'Mail:',
      content: DeveloperInfo.mail,
    ),
    ContactInfo(
      imagePath: 'icons/call.png',
      title: 'Call:',
      content: DeveloperInfo.mobileNumber,
    ),
    ContactInfo(
      imagePath: 'icons/pin.png',
      title: 'Visit:',
      content: DeveloperInfo.location,
    ),
  ];
}
