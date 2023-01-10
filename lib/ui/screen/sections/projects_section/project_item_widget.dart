import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/models/project.dart';
import 'package:flutter_web_portfolio/theme/app_styles.dart';
import 'package:flutter_web_portfolio/theme/colors.dart';
import 'package:flutter_web_portfolio/ui/common_widgets/responsive_widget.dart';
import 'package:flutter_web_portfolio/utilities/launcher_methods.dart';

class ProjectItemWidget extends StatelessWidget {
  final Project project;

  const ProjectItemWidget({
    required this.project,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: SizedBox(
        width: MediaQuery.of(context).size.width * .7,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * .3,
                  child: Image.asset(project.image!),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .075),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.width * .01,
                      ),
                      Text(project.name!, style: AppStyles.title),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * .01,
                      ),
                      Text(project.description!),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * .025,
                      ),
                      Wrap(
                        spacing: 10,
                        children: project.skills!
                            .map(
                              (s) => Container(
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                child: Chip(
                                  label: Text(s),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * .025,
                      ),
                      InkWell(
                        onTap: project.url == null
                            ? null
                            : () {
                                LauncherMethods.launchUrlFromString(project.url!);
                              },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.yellow!.withOpacity(.5),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 8,
                          ),
                          child: Text(
                            'Visit',
                            style: TextStyle(
                              color: AppColors.yellow,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: AppColors.black.withOpacity(.1),
              height: 20,
              thickness: 1,
            ),
          ],
        ),
      ),
      mobileScreen: SizedBox(
        width: MediaQuery.of(context).size.width * .7,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * .75,
              child: Image.asset(project.image!),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * .075),
            SizedBox(
              height: MediaQuery.of(context).size.width * .01,
            ),
            Text(project.name!, style: AppStyles.title),
            SizedBox(
              height: MediaQuery.of(context).size.width * .01,
            ),
            Text(
              project.description!,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * .025,
            ),
            Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: project.skills!
                  .map(
                    (s) => Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Chip(
                        label: Text(s),
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * .025,
            ),
            InkWell(
              onTap: project.url == null
                  ? null
                  : () {
                      LauncherMethods.launchUrlFromString(project.url!);
                    },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.yellow!.withOpacity(.5),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Text(
                  'Visit',
                  style: TextStyle(
                    color: AppColors.yellow,
                  ),
                ),
              ),
            ),
            Divider(
              color: AppColors.black.withOpacity(.1),
              height: 50,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
