import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/movie_screen.dart';
import 'screens/profile_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => LoginPage(),
  '/movies': (context) => MovieScreen(),
  '/profile': (context) => UserDataScreen(),
};
