import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/project.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'projects_page',
      routes: {
        'home_page': (context) => const HomePage(),
        'projects_page':(context) => const ProjectsPage(),
      },
    );
  }
}
