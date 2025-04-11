import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: CustomAppBar(),
          )
        ],
      ),
    );
  }
}
