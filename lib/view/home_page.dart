import 'package:flutter/material.dart';
import 'package:news_app_53_maadi/view/science_page.dart';
import 'package:news_app_53_maadi/view/sport_page.dart';

import 'health_page.dart';

class HomePage extends StatefulWidget{
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int currentIndex= 0;

List<Widget>screens= [

  HealthPage(),
  SportPage(),
  SciencePage(),
];
List<String> title =["Health", "Sports" , "Science"];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(title[currentIndex]),
       ),
       // 3 screens
       body:screens[currentIndex] ,
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: currentIndex,
         onTap:(index){
           setState(() {
             currentIndex =index;
           });
         } ,
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.health_and_safety),label: title[0]),
           BottomNavigationBarItem(icon: Icon(Icons.sports),label: title[1]),
           BottomNavigationBarItem(icon: Icon(Icons.science),label: title[2])
         ],
       ),
     );

  }
}