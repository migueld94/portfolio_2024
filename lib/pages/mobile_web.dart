// ignore_for_file: unused_import

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import 'package:go_router/go_router.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:portafolio/assets/utils/widgets/language.dart';
import 'package:portafolio/assets/utils/widgets/timeline_tile.dart';
import 'package:portafolio/pages/mobile/sections/section_about.dart';
import 'package:portafolio/pages/mobile/sections/section_home.dart';
import 'package:portafolio/pages/mobile/sections/section_resume.dart';
import 'package:provider/provider.dart';
import 'package:portafolio/assets/l10n/l10n.dart';

import 'package:portafolio/assets/utils/assets.dart';
import 'package:portafolio/assets/utils/widgets/card_info.dart';
import 'package:portafolio/assets/utils/widgets/change_theme.dart';
// import 'package:wen_portfolio/assets/utils/widgets/on_hover.dart';
import 'package:portafolio/assets/utils/theme/themes_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MobileWeb extends StatefulWidget {
  const MobileWeb({super.key});

  @override
  State<MobileWeb> createState() => _MobileWebState();
}

class _MobileWebState extends State<MobileWeb> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size;

    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: PortfolioColors.colorBlack,
      appBar: AppBar(
        backgroundColor: PortfolioColors.colorBlack,
        actions: const [
          LanguagePickerWidget(),
          horizontalMargin24,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Section Home
            SectionHome(currentWidth: currentWidth),

            // Section About
            SectionAbout(currentWidth: currentWidth),

            // Section Resume
            SectionResume(currentWidth: currentWidth),
          ],
        ),
      ),
    );
  }
}
