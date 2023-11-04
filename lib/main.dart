import 'package:flutter/material.dart';
import 'package:youtubeui/responsive/responsivelayout.dart';
import 'package:youtubeui/screens/Port.dart';
import 'package:youtubeui/screens/desktopview.dart';
import 'package:youtubeui/screens/mobileview.dart';
import 'package:youtubeui/screens/tabletview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: MyListData(),

      home: ResponsiveLayout(
        mobileView: MobileView(),
        tabletView: TabletView(),
        desktopView: DesktopView(),
        portTabView: PortTab(),
      ),
    );
  }
}
