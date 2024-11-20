import 'package:flutter/material.dart';

import '../../presentation/screens/rating/rating_page.dart';

class AppRoutes {
  static const String rating = '/rating';
  
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case rating:
        return MaterialPageRoute(
          builder: (_) =>  RatingPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Route not found')),
          ),
        );
    }
  }
} 