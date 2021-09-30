import 'package:flutter/material.dart';
import 'package:tatutiallocalization/pages/aboutpage.dart';
import 'package:tatutiallocalization/pages/homepage.dart';
import 'package:tatutiallocalization/pages/notpage.dart';
import 'package:tatutiallocalization/pages/settingspage.dart';
import 'package:tatutiallocalization/routes/route_name.dart';

class GustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case aboutRoute:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => const settingsPage());
    }
    return MaterialPageRoute(builder: (_) => const NothingPage());
  }
}
