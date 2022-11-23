import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';
import '../utils/applayout.dart';

class AppColumnlayout extends StatelessWidget {
  const AppColumnlayout({Key? key, required this.firstext,this.isColor ,required this
      .secondtext, required this.alignment}) : super(key: key);
  final String firstext;
  final String secondtext;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment:alignment,
      //style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
      //

      children: [
        Text(firstext,style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
        Gap(AppLayout.getHeight(5)),
        Text(secondtext,style:isColor==null?  Styles.headLineStyle4.copyWith(color:Colors.white):Styles.headLineStyle4,),
      ],
    );
  }
}
