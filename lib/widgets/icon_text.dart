import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';
import '../utils/applayout.dart';

class AppIconText extends StatelessWidget {

  const AppIconText({Key? key, required this.iconData, required this.text}) : super(key: key);
  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(vertical: AppLayout.getWidth(12),
          horizontal: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10))
      ),

      child:
      Row(
        children: [
          Icon(Icons.flight_takeoff_rounded,color: Color(0xFFBFC2DF),),
          Gap(10),
          Text(text,style: Styles.textStyle,)
        ],
      ),);
  }
}
