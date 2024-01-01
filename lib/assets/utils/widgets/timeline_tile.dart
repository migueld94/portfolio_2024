import 'package:flutter/material.dart';
import 'package:portafolio/assets/utils/theme/themes_provider.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final Widget child;
  const MyTimeLine({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(color: PortfolioColors.colorWhite),
        indicatorStyle: IndicatorStyle(
          width: 20,
          color: PortfolioColors.colorWhite,
          iconStyle: IconStyle(
            iconData: Icons.done,
            color: PortfolioColors.colorBlack,
          ),
        ),
        endChild: child,
      ),
    );
  }
}
