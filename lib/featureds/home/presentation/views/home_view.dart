import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/category_buttons_row.dart';
import 'widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SizedBox(),
            CategoryButtonsRow(),
          ],
        ),
      ),
    );
  }
}
