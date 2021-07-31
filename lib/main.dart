import 'package:breakingbad/helper/app_routes.dart';
import 'package:flutter/material.dart';
import 'helper/app_routes.dart';

void main() {
  runApp(BreackingBadApp(appRoutes: AppRoutes(),));
}

class BreackingBadApp extends StatelessWidget {
  final AppRoutes appRoutes;

  const BreackingBadApp({Key? key, required this.appRoutes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //primarySwatch: Colors.blue,
          ),
      onGenerateRoute: appRoutes.generateRoute,
    );
  }
}
