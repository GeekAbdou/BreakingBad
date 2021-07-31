import 'package:breakingbad/view_model/screens/characters_details_screen.dart';
import 'package:breakingbad/view_model/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import './constants.dart';

class AppRoutes {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouter.home:
        return MaterialPageRoute(builder: (_) => CharactersScreen());
      case AppRouter.CharactersDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharactersDetailsScreen());
    }
  }
}