import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_53_maadi/cubit/news_cubit.dart';
import 'package:news_app_53_maadi/cubit/news_state.dart';
import 'package:news_app_53_maadi/view/science_page.dart';
import 'package:news_app_53_maadi/view/sport_page.dart';

import 'health_page.dart';

class HomePage extends StatelessWidget{

// int currentIndex= 0;

List<Widget>screens= [
 const HealthPage(),
 const SportPage(),
  const SciencePage(),
];
List<String> title =["Health", "Sports" , "Science"];

  @override
  Widget build(BuildContext context) {
     return BlocBuilder<NewsCubit,NewsState>(
       builder: (context, state) {
         return Scaffold(
           appBar: AppBar(
             title: Text(title[NewsCubit
                 .get(context)
                 .currentIndex]),
           ),
           // 3 screens
           body: screens[NewsCubit
               .get(context)
               .currentIndex],
           bottomNavigationBar: BottomNavigationBar(
             currentIndex: NewsCubit
                 .get(context)
                 .currentIndex,
             onTap: (index) {
               NewsCubit.get(context).changeNavBar(index);
             },
             // onTap:(index){
             //   setState(() {
             //     currentIndex =index;
             //   });
             // } ,
             items: [
               BottomNavigationBarItem(
                   icon: Icon(Icons.health_and_safety), label: title[0]),
               BottomNavigationBarItem(
                   icon: Icon(Icons.sports), label: title[1]),
               BottomNavigationBarItem(
                   icon: Icon(Icons.science), label: title[2])
             ],
           ),
         );
       });

  }
}