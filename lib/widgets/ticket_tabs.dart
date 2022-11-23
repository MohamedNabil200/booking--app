import 'package:bookticket/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/applayout.dart';
class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({Key? key, required this.firsttab, required this.Secondtab}) : super(key: key);
  final String firsttab;
  final String Secondtab;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50),)),
                color: Colors.white,

              ),
              child: Center(child: Text(firsttab)),

            ),
            //hotels
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(right: Radius.circular
                  (AppLayout.getHeight(50),)),
                color: Colors.transparent,

              ),
              child: Center(child: Text(Secondtab)),

            ),

          ],


        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
          color: Color(0xFFF4F6FD),

        ),
      ),
    );
  }
}
