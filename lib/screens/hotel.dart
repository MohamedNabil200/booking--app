import 'package:bookticket/utils/app_style.dart';
import 'package:bookticket/utils/applayout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {

  const HotelScreen({Key? key, required this.hotel}) : super(key: key);
  final Map<String,dynamic>hotel;

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(
        color: Styles.primarycolor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primarycolor,
              image:  DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel['image']}"
                )
              )
            ),
          ),
          Gap(10),
          Text(hotel['place'],
          style: Styles.headLineStyle2.copyWith(color: Styles.kakicolor)
          ),
          Gap(10),
          Text(hotel['destination'],
              style: Styles.headLineStyle3.copyWith(color: Styles.bgcolor)
          ),
          Gap(10),
          Text('\$${hotel['price']}/Night',
              style: Styles.headLineStyle1.copyWith(color: Styles.kakicolor)
          ),
        ],
      ),
    );
  }
}
