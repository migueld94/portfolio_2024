import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portafolio/assets/utils/assets.dart';
import 'package:portafolio/assets/utils/theme/themes_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SectionAbout extends StatelessWidget {
  const SectionAbout({
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
          image: AssetImage(Assets.perfil),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
      child: Padding(
        padding: allPadding16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              AppLocalizations.of(context)!.section_about_me,
              style: context.theme.textTheme.subtitle_01,
            ),
            verticalMargin4,
            AutoSizeText(
              'mdelgado2107@gmail.com',
              style: context.theme.textTheme.subtitle,
            ),
            verticalMargin40,
            SizedBox(
              width: 600,
              child: AutoSizeText(
                AppLocalizations.of(context)!.aboutMe_fist,
                style: context.theme.textTheme.textBody,
                textAlign: TextAlign.justify,
              ),
            ),
            verticalMargin8,
            SizedBox(
              width: 600,
              child: AutoSizeText(
                AppLocalizations.of(context)!.aboutMe_second,
                style: context.theme.textTheme.textBody,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
