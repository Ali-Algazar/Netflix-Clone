import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/svg/logo.svg',
          height: 33,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        const Icon(Icons.download),
        const SizedBox(
          width: 10,
        ),
        const Icon(Icons.cast_outlined),
      ],
    );
  }
}
