import 'package:flutter_web_portfolio/models/project.dart';
import 'package:flutter_web_portfolio/models/statistics.dart';
import 'package:flutter_web_portfolio/models/working_process.dart';

mixin DeveloperCapabilities {
  static const List<String> skills = <String>[
    'Flutter',
    'Dart',
    'Android development (Java - Kotlin)',
    'iOS development (Swift - Object-C)',
    'Agile',
    'CI/CD',
    'Version control (Git, SVN, etc)',
    'OOP',
    'SOLID',
    'Design patterns',
    'Architecture patterns',
    'State management (Riverpod, Provider, Bloc, etc.)',
    'Firebase',
    'Testing (Unit - Integration - Widget)',
  ];

  static final List<Statistics> statistics = [
    Statistics(
      iconPath: 'icons/briefcase.png',
      total: '4+',
      description: 'Years of Experience',
    ),
    Statistics(
      iconPath: 'icons/menu.png',
      total: '${projects.length}',
      description: 'Projects Done',
    ),
    Statistics(
      iconPath: 'icons/happy.png',
      total: '50+',
      description: 'Happy Clients',
    ),
    Statistics(
      iconPath: 'icons/coffee.png',
      total: '∞',
      description: 'Coffee Cups',
    ),
  ];

  static final List<WorkingProcess> workingProcess = [
    WorkingProcess(
      index: '01.',
      iconPath: 'icons/pencil.png',
      title: 'Plan',
      description:
          'Understanding how long it’s going to take to perform a specific task and to execute an overall project',
    ),
    WorkingProcess(
      index: '02.',
      iconPath: 'icons/design.png',
      title: 'Design',
      description:
          'Design and developing new products that breaks big tasks into groups of subtasks to be performed in short sprints.',
    ),
    WorkingProcess(
      index: '03.',
      iconPath: 'icons/coding.png',
      title: 'Code',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.',
    ),
  ];

  static final List<Project> projects = [
    Project(
      name: 'eCommerceApp',
      description:
          'Developing a strategic plan that can lead the Muslim Ummah towards global competitiveness and can direct the efforts of qualified and skilled youth towards optimal utilization of planning and institutional tools to contribute to the renaissance of their communities and homeland countries.',
      image: 'images/projects/application_screenshot_shape.png',
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
      image: 'images/projects/application_screenshot_shape.png',
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
      image: 'images/projects/application_screenshot_shape.png',
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
