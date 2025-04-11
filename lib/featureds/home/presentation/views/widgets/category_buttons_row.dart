import 'package:flutter/material.dart';

class CategoryButtonsRow extends StatelessWidget {
  const CategoryButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.white38,
                ),
                borderRadius: BorderRadius.circular(20)),
          ),
          child: const Text(
            'TV show',
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.white38,
                ),
                borderRadius: BorderRadius.circular(20)),
          ),
          child: const Text(
            'Movie',
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.white38,
                ),
                borderRadius: BorderRadius.circular(20)),
          ),
          child: const Row(
            children: [
              Text(
                'Category',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
