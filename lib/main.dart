import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/movie_screen.dart';
import 'screens/add_movie.dart';
import 'screens/profile_screen.dart';
import 'screens/edit_movie_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/movie': (context) => MovieScreen(),
        '/add_movie': (context) => AddMovieScreen(),
        '/user_data': (context) => UserDataScreen(),
        '/edit_movie': (context) => EditMovieScreen(
              title: '',
              studio: '',
              genre: '',
              duration: '',
              tickets: '',
              price: '',
              time1: '',
              time2: '',
              time3: '',
              time4: '',
              description: '',
              date: '',
              imagePath: '',
            ),
      },
      theme: ThemeData(
        primaryColor: Colors.orange,
        scaffoldBackgroundColor: Color(0xFF1A1A1A),
      ),
    );
  }
}
