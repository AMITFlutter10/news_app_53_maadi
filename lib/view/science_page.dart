import 'package:flutter/material.dart';

import '../build_item.dart';
import '../news_data.dart';

class SciencePage extends StatelessWidget {
  const SciencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return listItem(scienceList);
  }
}
