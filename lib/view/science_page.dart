import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../build_item.dart';
import '../cubit/news_cubit.dart';
import '../cubit/news_state.dart';
import '../news_data.dart';

class SciencePage extends StatelessWidget {
  const SciencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit,NewsState>(
        builder: (BuildContext context, state) {
          return listItem(NewsCubit
              .get(context)
              .scienceList);
        }
    );
  }
}
