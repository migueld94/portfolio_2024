import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portafolio/assets/utils/assets.dart';
import 'package:portafolio/assets/utils/theme/themes_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class SectionHome extends StatelessWidget {
  const SectionHome({
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
          opacity: 0.6,
          image: AssetImage(
            Assets.background_00,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: currentWidth.height * 0.15,
            ),
            AutoSizeText(
              'Miguel A.',
              style: context.theme.textTheme.h1.copyWith(fontSize: 40.0),
            ),
            AutoSizeText(
              'Lopez Delgado',
              style: context.theme.textTheme.h2.copyWith(fontSize: 40.0),
            ),
            verticalMargin8,
            AutoSizeText(
              // 'Web & Mobile Developer',
              AppLocalizations.of(context)!.work,
              style: context.theme.textTheme.h3.copyWith(
                  fontSize: 10.0, fontFamily: 'Nunito', letterSpacing: 6.0),
            ),
            verticalMargin16,
            Row(
              children: [
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: borderRadius40,
                    border: Border.all(
                      color: PortfolioColors.colorWhite,
                      width: 2.0,
                    ),
                  ),
                  child: Center(
                    child: AutoSizeText(
                      AppLocalizations.of(context)!.items_04,
                      style: context.theme.textTheme.textButton,
                    ),
                  ),
                ),
                horizontalMargin16,
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: borderRadius40,
                    border: Border.all(
                      color: PortfolioColors.colorWhite,
                      width: 2.0,
                    ),
                  ),
                  child: Center(
                    child: AutoSizeText(
                      AppLocalizations.of(context)!.items_05,
                      style: context.theme.textTheme.textButton,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        String recipient = 'mballesterlb@gmail.com';
                        String subject = 'Prueba';
                        String body = 'Correo de pruebas';

                        final Uri email = Uri(
                          scheme: 'mailto',
                          path: recipient,
                          query: 'subject=' +
                              Uri.encodeComponent(subject) +
                              '&body=' +
                              Uri.encodeComponent(body),
                        );

                        if (await canLaunchUrl(email)) {
                          await launchUrl(email);
                        } else {
                          debugPrint('error');
                        }
                      },
                      child: Container(
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
                    ),
                    verticalMargin8,
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
                    verticalMargin8,
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
                    verticalMargin8,
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
                    verticalMargin8,
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
                // const Spacer(),
                Row(
                  children: [
                    AutoSizeText(
                      '3',
                      style: context.theme.textTheme.textNumberExperience,
                    ),
                    AutoSizeText(
                      '${AppLocalizations.of(context)!.years.toUpperCase()}\n${AppLocalizations.of(context)!.experiences.toUpperCase()}',
                      style: context.theme.textTheme.textExperience,
                    ),
                  ],
                )
                // Wrap(
                //   direction: Axis.horizontal,
                //   crossAxisAlignment: WrapCrossAlignment.end,
                //   children: [
                //     AutoSizeText(
                //       '3',
                //       style: context.theme.textTheme.textNumberExperience,
                //     ),
                //     horizontalMargin11,
                //     AutoSizeText(
                //       '${AppLocalizations.of(context)!.years.toUpperCase()}\n${AppLocalizations.of(context)!.experiences.toUpperCase()}',
                //       style: context.theme.textTheme.textExperience,
                //     ),
                //   ],
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
