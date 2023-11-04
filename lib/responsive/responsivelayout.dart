import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;
  final Widget portTabView;

  const ResponsiveLayout({
    super.key,
    required this.mobileView,
    required this.tabletView,
    required this.desktopView,
    required this.portTabView,
  });

  @override
  Widget build(BuildContext context) {
// PortTab

    return LayoutBuilder(
      builder: (context, constraints) {
        // if (constraints.maxWidth < 680) {
        if (constraints.maxWidth < 530) {
          return mobileView;
        } else if (constraints.maxWidth < 700) {
          return portTabView;
        } else if (constraints.maxWidth < 1100) {
          return tabletView;
        } else {
          return desktopView;
        }
      },
    );
  }
}
