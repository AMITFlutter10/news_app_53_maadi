import 'package:flutter/material.dart';

import '../build_item.dart';
import '../news_data.dart';

class SportPage extends StatelessWidget {
  const SportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return listItem(sportsList);
  }
}
