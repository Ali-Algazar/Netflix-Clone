import 'package:flutter/material.dart';

class CarouseButtom extends StatelessWidget {
  const CarouseButtom({
    super.key,
    required this.icon,
    required this.color,
    required this.backGroundColor,
    required this.text,
    required this.onTap,
  });
  final IconData icon;
  final Color color;
  final Color backGroundColor;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(text,
              style: TextStyle(
                color: color,
              )),
        ]),
      ),
    );
  }
}
