import 'package:flutter/material.dart';

import '../build_item.dart';
import '../news_data.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return listItem(healthList);
  }
}
