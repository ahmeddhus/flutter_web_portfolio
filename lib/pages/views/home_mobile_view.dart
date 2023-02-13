import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/common_widgets/app_icon.dart';
import 'package:flutter_web_portfolio/pages/sections/header/header_section.dart';
import 'package:flutter_web_portfolio/theme/app_styles.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/data/developer_info.dart';
import 'package:flutter_web_portfolio/utilities/launcher_methods.dart';

class HomeMobileView extends StatelessWidget {
  final List<Widget> sections;

  const HomeMobileView({
    required this.sections,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: AppColors.yellow,
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    'images/ahmeddhus.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {},
                title: const Text(
                  'About Me',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Experience',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Process',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Portfolio',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              const SizedBox(height: 20),
              ListTile(
                title: TextButton(
                  onPressed: () {},
                  style: AppStyles.textButtonStyle,
                  child: const Text(
                    'Contact Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: DeveloperInfo.websites
                    .map((e) => InkWell(
                          onTap: () async {
                            LauncherMethods.launchUrlFromString(e.url);
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: AppIcon(
                              e.iconPath,
                              color: AppColors.black,
                            ),
                          ),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              titleSpacing: 0,
              centerTitle: true,
              backgroundColor: Colors.transparent,
              leading: Align(
                child: Builder(
                  builder: (ctx) => InkWell(
                    onTap: () {
                      Scaffold.of(ctx).openDrawer();
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Container(
                        width: 40,
                        height: 40,
                        color: AppColors.yellow,
                        child: Image.asset('images/ahmeddhus.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/cover.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black,
                        Colors.black87,
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(350),
                child: HeaderSection(),
              ),
            ),
            ...sections.map(
              (Widget e) => SliverToBoxAdapter(child: e),
            ),
          ],
        ),
      ),
    );
  }
}
