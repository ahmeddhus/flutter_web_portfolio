import 'package:flutter_web_portfolio/models/project.dart';

mixin DeveloperAchievements{
 static final List<Project> projects = [
    Project(
      name: 'eCommerceApp',
      description:
      'Developing a strategic plan that can lead the Muslim Ummah towards global competitiveness and can direct the efforts of qualified and skilled youth towards optimal utilization of planning and institutional tools to contribute to the renaissance of their communities and homeland countries.',
      image: 'images/projects/omran.png',
      url: 'https://play.google.com',
      skills: [
        'Dart',
        'Java',
        'Php',
        'Sql',
        'Flutter',
        'OneSignal',
        'Git',
      ],
    ),
    Project(
      name: 'Topfood',
      description: 'Food delivery app',
      image: 'images/projects/topfood.png',
      url: 'https://play.google.com',
      skills: [
        'Dart',
        'Flutter',
        'Git',
      ],
    ),
    Project(
      name: 'TaxiApp',
      description:
      'TaxiApp is a third party transportation service, which is intended to provide cars to its customers through a smart application whenever they request. The use of this application is free',
      image: 'images/projects/toptaxi.png',
      url: 'https://play.google.com',
      skills: [
        'Java',
        'Php',
        'JavaScript',
        'Html',
        'Css',
        'Sql',
        'Firebase',
        'Laravel',
        'OneSignal',
        'Git',
      ],
    ),
  ];
}