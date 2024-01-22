import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portafolio/assets/utils/assets.dart';
import 'package:portafolio/assets/utils/theme/themes_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:timeline_tile/timeline_tile.dart';

class SectionResume extends StatelessWidget {
  const SectionResume({
    super.key,
    required this.currentWidth,
  });

  final Size currentWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: currentWidth.height * 1,
      height: currentWidth.height * 0.939,

      decoration: BoxDecoration(
        color: PortfolioColors.colorBlack,
        image: const DecorationImage(
          opacity: 0.4,
          image: AssetImage(
            Assets.background_03,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: allPadding16,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Bloque 1
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Skills
                  AutoSizeText(
                    AppLocalizations.of(context)!.section_skills,
                    style: context.theme.textTheme.subtitle_01,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    'Flutter - Dart',
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    'Python - Django',
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    'Angular',
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    'Java',
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    'HTML - CSS - JavaScript',
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    'Oracle - Postgres',
                    style: context.theme.textTheme.subtitle_03,
                  ),

                  verticalMargin30,
                  AutoSizeText(
                    AppLocalizations.of(context)!.personal_skill,
                    style: context.theme.textTheme.subtitle_01,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    AppLocalizations.of(context)!.section_skills_api,
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    AppLocalizations.of(context)!.section_skills_learner,
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    AppLocalizations.of(context)!.section_skills_proactive,
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    AppLocalizations.of(context)!.section_skills_advanced,
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  // verticalMargin16,
                  verticalMargin30,

                  // Languages
                  AutoSizeText(
                    AppLocalizations.of(context)!.section_lenguage,
                    style: context.theme.textTheme.subtitle_01,
                  ),
                  verticalMargin8,
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_right,
                        color: PortfolioColors.colorWhite,
                      ),
                      horizontalMargin8,
                      AutoSizeText(
                        AppLocalizations.of(context)!.english_lenguage,
                        style: context.theme.textTheme.subtitle_03,
                      ),
                    ],
                  ),
                  verticalMargin8,
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_right,
                        color: PortfolioColors.colorWhite,
                      ),
                      horizontalMargin8,
                      AutoSizeText(
                        AppLocalizations.of(context)!.spanish_lenguage,
                        style: context.theme.textTheme.subtitle_03,
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Bloque 2
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    AppLocalizations.of(context)!.section_work_experience,
                    style: context.theme.textTheme.subtitle_01,
                  ),
                  verticalMargin4,
                  AutoSizeText(
                    'EMSER | Cordoba, Argentina',
                    style: context.theme.textTheme.subtitle_02,
                  ),
                  verticalMargin8,
                  SizedBox(
                    height: 50,
                    child: TimelineTile(
                      isFirst: true,
                      alignment: TimelineAlign.manual,
                      lineXY: 0.4,
                      beforeLineStyle:
                          LineStyle(color: PortfolioColors.colorWhite),
                      indicatorStyle: IndicatorStyle(
                        width: 20,
                        color: PortfolioColors.colorWhite,
                        iconStyle: IconStyle(
                          iconData: Icons.done,
                          color: PortfolioColors.colorBlack,
                        ),
                      ),
                      startChild: AutoSizeText(
                        '09/2024 - 09/2024',
                        style: context.theme.textTheme.subtitle_03,
                      ),
                      endChild: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: AutoSizeText(
                          'Fast2Ship\n${AppLocalizations.of(context)!.work_ocupation_00}',
                          style: context.theme.textTheme.subtitle_03,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: TimelineTile(
                      // isFirst: true,
                      alignment: TimelineAlign.manual,
                      lineXY: 0.4,
                      beforeLineStyle:
                          LineStyle(color: PortfolioColors.colorWhite),
                      indicatorStyle: IndicatorStyle(
                        width: 20,
                        color: PortfolioColors.colorWhite,
                        iconStyle: IconStyle(
                          iconData: Icons.done,
                          color: PortfolioColors.colorBlack,
                        ),
                      ),
                      startChild: AutoSizeText(
                        '09/2024 - 09/2024',
                        style: context.theme.textTheme.subtitle_03,
                      ),
                      endChild: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: AutoSizeText(
                          'GoTruck\n${AppLocalizations.of(context)!.work_ocupation_01}',
                          style: context.theme.textTheme.subtitle_03,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: TimelineTile(
                      isLast: true,
                      alignment: TimelineAlign.manual,
                      lineXY: 0.4,
                      beforeLineStyle:
                          LineStyle(color: PortfolioColors.colorWhite),
                      indicatorStyle: IndicatorStyle(
                        width: 20,
                        color: PortfolioColors.colorWhite,
                        iconStyle: IconStyle(
                          iconData: Icons.done,
                          color: PortfolioColors.colorBlack,
                        ),
                      ),
                      startChild: AutoSizeText(
                        '09/2024 - 09/2024',
                        style: context.theme.textTheme.subtitle_03,
                      ),
                      endChild: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: AutoSizeText(
                          'Gev+\n${AppLocalizations.of(context)!.work_ocupation_01}',
                          style: context.theme.textTheme.subtitle_03,
                        ),
                      ),
                    ),
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    'ONAT | ${AppLocalizations.of(context)!.location}',
                    style: context.theme.textTheme.subtitle_02,
                  ),
                  verticalMargin8,
                  SizedBox(
                    height: 50,
                    child: TimelineTile(
                      isFirst: true,
                      alignment: TimelineAlign.manual,
                      lineXY: 0.4,
                      beforeLineStyle:
                          LineStyle(color: PortfolioColors.colorWhite),
                      indicatorStyle: IndicatorStyle(
                        width: 20,
                        color: PortfolioColors.colorWhite,
                        iconStyle: IconStyle(
                          iconData: Icons.done,
                          color: PortfolioColors.colorBlack,
                        ),
                      ),
                      startChild: AutoSizeText(
                        '09/2024 - 09/2024',
                        style: context.theme.textTheme.subtitle_03,
                      ),
                      endChild: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: AutoSizeText(
                          '${AppLocalizations.of(context)!.work_ocupation_02}\n${AppLocalizations.of(context)!.work_ocupation_tax}',
                          style: context.theme.textTheme.subtitle_03,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: TimelineTile(
                      isLast: true,
                      alignment: TimelineAlign.manual,
                      lineXY: 0.4,
                      beforeLineStyle:
                          LineStyle(color: PortfolioColors.colorWhite),
                      indicatorStyle: IndicatorStyle(
                        width: 20,
                        color: PortfolioColors.colorWhite,
                        iconStyle: IconStyle(
                          iconData: Icons.done,
                          color: PortfolioColors.colorBlack,
                        ),
                      ),
                      startChild: AutoSizeText(
                        '09/2024 - 09/2024',
                        style: context.theme.textTheme.subtitle_03,
                      ),
                      endChild: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: AutoSizeText(
                          '${AppLocalizations.of(context)!.work_ocupation_02}\n${AppLocalizations.of(context)!.work_ocupation_science}',
                          style: context.theme.textTheme.subtitle_03,
                        ),
                      ),
                    ),
                  ),
                  verticalMargin16,
                  // 'Education',
                  AutoSizeText(
                    AppLocalizations.of(context)!.section_education,
                    style: context.theme.textTheme.subtitle_01,
                  ),
                  verticalMargin8,
                  SizedBox(
                    height: 80,
                    child: TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.4,
                      beforeLineStyle:
                          LineStyle(color: PortfolioColors.colorWhite),
                      indicatorStyle: IndicatorStyle(
                        width: 20,
                        color: PortfolioColors.colorWhite,
                        iconStyle: IconStyle(
                          iconData: Icons.done,
                          color: PortfolioColors.colorBlack,
                        ),
                      ),
                      startChild: AutoSizeText(
                        '2024 - 2024',
                        style: context.theme.textTheme.subtitle_03,
                      ),
                      endChild: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: AutoSizeText(
                          '${AppLocalizations.of(context)!.university_name}\n${AppLocalizations.of(context)!.university_degree}',
                          style: context.theme.textTheme.subtitle_03,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Bloque 3
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    // 'What can i do?',
                    AppLocalizations.of(context)!.doing,
                    style: context.theme.textTheme.subtitle_01,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    AppLocalizations.of(context)!.work,
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    AppLocalizations.of(context)!.design,
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  // verticalMargin16,
                  verticalMargin30,

                  AutoSizeText(
                    // 'Software Skills',
                    AppLocalizations.of(context)!.software_skill,
                    style: context.theme.textTheme.subtitle_01,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    'Git - GitLab - GitHub',
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    'Figma - Jira',
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    'PyCharm - VSCode',
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    'Toad - PL/SQL Develop',
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  verticalMargin8,
                  AutoSizeText(
                    'Office - Google Worksheets',
                    style: context.theme.textTheme.subtitle_03,
                  ),
                  // verticalMargin16,
                  verticalMargin30,

                  AutoSizeText(
                    // 'Hobbies',
                    AppLocalizations.of(context)!.hobbies,
                    style: context.theme.textTheme.subtitle_01,
                  ),
                  verticalMargin8,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius20,
                          border: Border.all(color: PortfolioColors.colorWhite),
                        ),
                        child: Icon(
                          Ionicons.logo_whatsapp,
                          color: PortfolioColors.colorWhite,
                        ),
                      ),
                      horizontalMargin8,
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius20,
                          border: Border.all(color: PortfolioColors.colorWhite),
                        ),
                        child: Icon(
                          Ionicons.logo_whatsapp,
                          color: PortfolioColors.colorWhite,
                        ),
                      ),
                      horizontalMargin8,
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius20,
                          border: Border.all(color: PortfolioColors.colorWhite),
                        ),
                        child: Icon(
                          Ionicons.cloud_download_outline,
                          color: PortfolioColors.colorWhite,
                        ),
                      ),
                    ],
                  ),
                  verticalMargin8,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius20,
                          border: Border.all(color: PortfolioColors.colorWhite),
                        ),
                        child: Icon(
                          Ionicons.mail_open_outline,
                          color: PortfolioColors.colorWhite,
                        ),
                      ),
                      horizontalMargin8,
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius20,
                          border: Border.all(color: PortfolioColors.colorWhite),
                        ),
                        child: Icon(
                          Ionicons.logo_linkedin,
                          color: PortfolioColors.colorWhite,
                        ),
                      ),
                      horizontalMargin8,
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius20,
                          border: Border.all(color: PortfolioColors.colorWhite),
                        ),
                        child: Icon(
                          Ionicons.logo_github,
                          color: PortfolioColors.colorWhite,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //
          ],
        ),
      ),
    );
  }
}
