import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:sale_car_project/screen/home/home_screen.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        // routes: <RouteBase>[
        //   GoRoute(
        //     path: 'dashboard',
        //     builder: (BuildContext context, GoRouterState state) {
        //       return const DashboardScreen();
        //     },
        //   ),
        //   GoRoute(
        //     path: 'category',
        //     builder: (BuildContext context, GoRouterState state) {
        //       return const CategoryScreen();
        //     },
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
