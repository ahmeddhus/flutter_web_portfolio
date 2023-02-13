import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/pages/sections/header/header_section.dart';
import 'package:flutter_web_portfolio/theme/app_styles.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';

class HomeDesktopView extends StatelessWidget {
  final List<Widget> sections;

  const HomeDesktopView({
    required this.sections,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              toolbarHeight: 100,
              backgroundColor: Colors.transparent,
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
                      colors: [Colors.black, Colors.black87, Colors.transparent],
                    ),
                  ),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .15,
                ),
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
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(500),
                child: HeaderSection(),
              ),
              actions: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'About Me',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Experience',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Process',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Portfolio',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    TextButton(
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
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .15),
              ],
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
