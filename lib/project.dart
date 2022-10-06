import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget{
  const ProjectsPage({Key?key}) : super (key:key);
   @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
          ),
        )
      ),
    );
  }
}