import 'package:flutter/material.dart';
import 'package:praktikum_01/home_page.dart';
import 'package:praktikum_01/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const Homepage(),
        '/second_page' : (context) => const SecondPage(),
      },
			theme: ThemeData(
        // Adjust theme data according to your requirements
				useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
