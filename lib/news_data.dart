import 'package:news_app_53_maadi/const.dart';
import 'package:news_app_53_maadi/dio_helper.dart';

import 'data_model.dart';
List<Articles>healthList =[];
List<Articles>sportsList =[];
List<Articles>scienceList =[];
////  https://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=935fd7ff5d5d47b9b01be1f7c0b9ba00

ArticlesModel articlesModel =ArticlesModel();

Future<void>getHealth()async{
  DioHelper.getData(url: endPoint, query: {
    'country':'us',
    'category':'health',
    'apiKey':'935fd7ff5d5d47b9b01be1f7c0b9ba00'
  }).then((value){
 articlesModel = ArticlesModel.fromJson(value.data);
    healthList = articlesModel.articles!;
  }).catchError((error){
    print(error);
  });
}
Future<void>getSport()async{
  DioHelper.getData(url: endPoint, query: {
    'country':'us',
    'category':'sport',
    'apiKey':'935fd7ff5d5d47b9b01be1f7c0b9ba00'
  }).then((value){
 articlesModel = ArticlesModel.fromJson(value.data);
    sportsList = articlesModel.articles!;
  }).catchError((error){
    print(error);
  });
}
Future<void>getScience()async{
  DioHelper.getData(url: endPoint, query: {
    'country':'us',
    'category':'science',
    'apiKey':'935fd7ff5d5d47b9b01be1f7c0b9ba00'
  }).then((value){
 articlesModel = ArticlesModel.fromJson(value.data);
    scienceList = articlesModel.articles!;
  }).catchError((error){
    print(error);
  });
}
