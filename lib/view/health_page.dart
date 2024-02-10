import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_53_maadi/cubit/news_cubit.dart';
import 'package:news_app_53_maadi/cubit/news_state.dart';

import '../build_item.dart';
import '../news_data.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit,NewsState>(
        builder: (BuildContext context, state) {
          return listItem(NewsCubit
              .get(context)
              .healthList);
        }
        );
  }
}
