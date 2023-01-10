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
      //TODO: Add projects number
      total: '10+',
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
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.',
    ),
    WorkingProcess(
      index: '02.',
      iconPath: 'icons/design.png',
      title: 'Design',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.',
    ),
    WorkingProcess(
      index: '03.',
      iconPath: 'icons/coding.png',
      title: 'Code',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.',
    ),
  ];
}
