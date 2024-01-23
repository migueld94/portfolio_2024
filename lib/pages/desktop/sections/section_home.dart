// ignore_for_file: non_constant_identifier_names, avoid_web_libraries_in_flutter

import 'dart:html' as html;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portafolio/assets/l10n/l10n.dart';
import 'package:portafolio/assets/utils/assets.dart';
import 'package:portafolio/assets/utils/methods/utils.dart';
import 'package:portafolio/assets/utils/theme/themes_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:portafolio/assets/utils/widgets/on_hover.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SectionHome extends StatelessWidget {
  const SectionHome({
    super.key,
    required this.currentWidth,
  });

  final Size currentWidth;

  @override
  Widget build(BuildContext context) {
    String urlcvEn = "assets/assets/curriculum/cv_en.pdf";
    String urlcvEs = "assets/assets/curriculum/cv_es.pdf";
    final locale = Localizations.localeOf(context);
    final flag = L10n.getFlag(locale.languageCode);

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
              style: context.theme.textTheme.h1,
            ),
            AutoSizeText(
              'Lopez Delgado',
              style: context.theme.textTheme.h2,
            ),
            verticalMargin8,
            AutoSizeText(
              // 'Web & Mobile Developer',
              AppLocalizations.of(context)!.work,
              style: context.theme.textTheme.h3,
            ),
            verticalMargin16,
            const Spacer(),
            Row(
              children: [
                // GestureDetector(
                //   onTap: () => launchEmail(
                //       toEmail: 'mdelgado2107@gmail.com',
                //       subject: 'prueba',
                //       message: 'hi'),
                //   child: Container(
                //     width: 40.0,
                //     height: 40.0,
                //     decoration: BoxDecoration(
                //       borderRadius: borderRadius20,
                //       border: Border.all(color: PortfolioColors.colorWhite),
                //     ),
                //     child: Icon(
                //       Ionicons.mail_open_outline,
                //       color: PortfolioColors.colorWhite,
                //     ),
                //   ),
                // ),
                // horizontalMargin8,
                GestureDetector(
                  onTap: () {
                    html.window.open(
                        'https://linkedin.com/in/miguel-angel-lópez-delgado-78b5b3241',
                        '_blank');
                  },
                  child: OnHoverButton(
                    builder: (isHovered) {
                      final color_border = isHovered
                          ? PortfolioColors.colorOrange
                          : PortfolioColors.colorWhite;
                      final color = isHovered
                          ? PortfolioColors.colorBlue
                          : PortfolioColors.colorTransparent;
                      return Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: borderRadius20,
                          border: Border.all(color: color_border),
                        ),
                        child: Icon(
                          Ionicons.logo_linkedin,
                          color: PortfolioColors.colorWhite,
                        ),
                      );
                    },
                  ),
                ),
                horizontalMargin8,
                GestureDetector(
                  onTap: () {
                    html.window.open(
                        'https://github.com/migueld94?tab=repositories',
                        '_blank');
                  },
                  child: OnHoverButton(
                    builder: (isHovered) {
                      final color_border = isHovered
                          ? PortfolioColors.colorOrange
                          : PortfolioColors.colorWhite;
                      final color = isHovered
                          ? PortfolioColors.colorDarkPurple
                          : PortfolioColors.colorTransparent;
                      return Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: borderRadius20,
                          border: Border.all(color: color_border),
                        ),
                        child: Icon(
                          Ionicons.logo_github,
                          color: PortfolioColors.colorWhite,
                        ),
                      );
                    },
                  ),
                ),
                horizontalMargin8,
                GestureDetector(
                  onTap: () {
                    html.window.open('https://wa.me/5353212678', '_blank');
                  },
                  child: OnHoverButton(
                    builder: (isHovered) {
                      final color_border = isHovered
                          ? PortfolioColors.colorOrange
                          : PortfolioColors.colorWhite;
                      final color = isHovered
                          ? PortfolioColors.colorGreen
                          : PortfolioColors.colorTransparent;
                      return Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: borderRadius20,
                          border: Border.all(color: color_border),
                        ),
                        child: Icon(
                          Ionicons.logo_whatsapp,
                          color: PortfolioColors.colorWhite,
                        ),
                      );
                    },
                  ),
                ),
                horizontalMargin8,
                GestureDetector(
                  onTap: () {
                    if (flag == 'es') {
                      downloadFile(urlcvEs, flag);
                    } else {
                      downloadFile(urlcvEn, flag);
                    }
                  },
                  child: OnHoverButton(
                    builder: (isHovered) {
                      return Container(
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
                      );
                    },
                  ),
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    children: [
                      // TextSpan(
                      //   text: '+',
                      //   style: context.theme.textTheme.subtitle_02
                      //       .copyWith(color: PortfolioColors.colorWhite),
                      // ),
                      TextSpan(
                        text: '3',
                        style: context.theme.textTheme.textNumberExperience
                            .copyWith(color: PortfolioColors.colorWhite),
                      ),
                    ],
                  ),
                ),
                horizontalMargin8,
                AutoSizeText(
                  '${AppLocalizations.of(context)!.years.toUpperCase()}\n${AppLocalizations.of(context)!.experiences.toUpperCase()}',
                  style: context.theme.textTheme.textExperience,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Future launchEmail({
  required String toEmail,
  required String subject,
  required String message,
}) async {
  final url =
      'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  }
}
