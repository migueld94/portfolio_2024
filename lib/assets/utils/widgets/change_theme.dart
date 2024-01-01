import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:portafolio/assets/utils/theme/themes_provider.dart';

class ChangeThemeButtonWidget extends StatefulWidget {
  const ChangeThemeButtonWidget({
    super.key,
  });

  @override
  State<ChangeThemeButtonWidget> createState() =>
      _ChangeThemeButtonWidgetState();
}

class _ChangeThemeButtonWidgetState extends State<ChangeThemeButtonWidget> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Row(
      children: [
        switchValue
            ? const Icon(
                Ionicons.moon_outline,
              )
            : const Icon(
                Ionicons.sunny_outline,
                color: Colors.amber,
              ),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            activeColor: Colors.amber,
            trackColor: Colors.black,
            value: themeProvider.isDarkTheme,
            onChanged: (value) {
              final provider =
                  Provider.of<ThemeProvider>(context, listen: false);
              provider.toogleTheme(value);
              setState(() {
                switchValue = !switchValue;
              });
            },
          ),
        ),
      ],
    );
  }
}
