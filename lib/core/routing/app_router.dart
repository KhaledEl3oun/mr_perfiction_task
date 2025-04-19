
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mr_perfiction_task/core/data/product_model.dart';
import 'package:mr_perfiction_task/feature/details/ui/details_screen.dart';
import 'package:mr_perfiction_task/feature/home/ui/home_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) =>  HomeScreen());
      case '/detailsScreen':
      final product = settings.arguments as ProductModel;
        return MaterialPageRoute(builder: (_) =>  DetailsScreen(product: product,));
      default:
        return MaterialPageRoute(builder: (_) =>  Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}