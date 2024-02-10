

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../const.dart';
import '../model_data/data_model.dart';
import '../dio/dio_helper.dart';
import 'news_state.dart';

class NewsCubit extends Cubit<NewsState>{
  NewsCubit(): super (NewsInitialState());

  static NewsCubit get(context)=>BlocProvider.of(context);


  List<Articles>healthList =[];
  List<Articles>sportsList =[];
  List<Articles>scienceList =[];
////  https://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=935fd7ff5d5d47b9b01be1f7c0b9ba00

  ArticlesModel articlesModel =ArticlesModel();

  // 1- loading
  // 2- success
  // 3- error


  Future<void>getHealth()async{
    emit(LoadingHealthDataState());
    DioHelper.getData(url: endPoint, query: {
      'country':'eg',
      'category':'health',
      'apiKey':'935fd7ff5d5d47b9b01be1f7c0b9ba00'
    }).then((value){
      articlesModel = ArticlesModel.fromJson(value.data);
      healthList = articlesModel.articles!;
      emit(SuccessGetHealthDataState());
    }).catchError((error){
      print(error);
      emit(ErrorHealthState());
    });
  }

Future<void>getSport()async{
    emit(LoadingSportDataState());
  DioHelper.getData(url: endPoint, query: {
    'country':'us',
    'category':'sport',
    'apiKey':'935fd7ff5d5d47b9b01be1f7c0b9ba00'
  }).then((value){
 articlesModel = ArticlesModel.fromJson(value.data);
    sportsList = articlesModel.articles!;
    emit(SuccessGetSportDataState());
  }).catchError((error){
    print(error);
    emit(ErrorSportState());
  });
}



Future<void>getScience()async{
    emit(LoadingScienceDataState());
  DioHelper.getData(url: endPoint, query: {
    'country':'us',
    'category':'science',
    'apiKey':'935fd7ff5d5d47b9b01be1f7c0b9ba00'
  }).then((value){
 articlesModel = ArticlesModel.fromJson(value.data);
    scienceList = articlesModel.articles!;
    emit(SuccessGetScienceDataState());
  }).catchError((error){
    print(error);
    emit(ErrorScienceState());
  });
}

int currentIndex =0 ;
  void changeNavBar(index){
    currentIndex= index;
    emit(ChangeNavBarState());
  }



}