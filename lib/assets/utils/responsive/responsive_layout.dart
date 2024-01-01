import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          // Modo Web Mobile
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          // Modo Web Tablet
          return tabletScaffold;
        } else {
          return desktopScaffold; // Modo Web Desktop
        }
      },
    );
  }
}

class InternetConection extends StatelessWidget {
  const InternetConection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Revise su conexxion'),
    );
  }
}
