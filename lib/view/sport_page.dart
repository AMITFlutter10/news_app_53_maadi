import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../build_item.dart';
import '../cubit/news_cubit.dart';
import '../cubit/news_state.dart';
import '../news_data.dart';

class SportPage extends StatelessWidget {
  const SportPage({super.key});

  @override
  Widget build(BuildContext context) {
      return BlocConsumer<NewsCubit,NewsState>(
          listener: (context, state){
            if(state is LoadingSportDataState){
              Center(child: CircularProgressIndicator());
            }else if( state is ErrorSportState)
              {
                Center(child: Icon(Icons.error_outline));
              }
          },
        builder: (BuildContext context, state) {
          return listItem(NewsCubit
              .get(context)
              .sportsList);
        }
    );
  }
}
