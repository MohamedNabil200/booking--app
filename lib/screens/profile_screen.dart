import 'package:bookticket/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';
import '../utils/applayout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)), 
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(68),
                width: AppLayout.getHeight(68),

    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_1.png')
                  )
                ),
              ),
              Gap(AppLayout.getHeight(10)),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets",style: Styles.headLineStyle1,),
                  Gap(AppLayout.getHeight(10)),
                  Text("New york",style: TextStyle(
                    fontSize: 14,fontWeight: FontWeight.w500,color: Colors
                      .grey.shade500,
                  ),),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: Color(0xFFFEF4F3),

                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout
                        .getHeight(3),vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),

                          ),
                          child: Icon(FluentSystemIcons
                              .ic_fluent_shield_filled,
                          color: Colors.white,size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text("Premium status",style: TextStyle(
                          color: Color(0xFF526799),fontWeight: FontWeight.w600,
                        ),)

                      ],
                    ),
                  ),

                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print('you are tapped');
                    },
                    child: Text("Edit",
                    style: Styles.textStyle.copyWith(color:Styles.primarycolor,
                        fontWeight: FontWeight.w300),



                    ),
                  ),

                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300,),
          Gap(AppLayout.getHeight(8)),

          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color:Styles.primarycolor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18,color: Color
                      (0xFF264CD2)),
                    color: Colors.transparent,
                  ),
                ),),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight
                  (15),vertical:AppLayout.getHeight
                  (20) ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons
                          .ic_fluent_lightbulb_filament_filled,
                      color: Styles.primarycolor,size: 27,),
                      maxRadius: 25,
                        backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You have got anew reward',
                        style: Styles.headLineStyle2.copyWith(fontWeight:
                        FontWeight.bold,color: Colors.white),),
                        Gap(AppLayout.getHeight(5)),
                        Text('You have 95 flights in a year',
                          style: Styles.headLineStyle2.copyWith(fontWeight:
                          FontWeight.bold,color: Colors.white.withOpacity(0.9),fontSize: 16),)
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
          Gap(AppLayout.getHeight(25)),

          Text('Accumalted miles',style: Styles.headLineStyle2,),
          Gap(AppLayout.getHeight(17)),
          Container(
            child: Column(
              children: [
                Text('192802',style: TextStyle(
                  fontSize: 45,
                  color: Styles.textcolor,fontWeight: FontWeight.w600
                ),),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles accrued',style: Styles.headLineStyle4
                        .copyWith(fontSize: 16),),
                    Text('13 AUGUST 2022 ',style: Styles.headLineStyle4
                        .copyWith(fontSize: 16),)
                  ],
                ),
                Gap(AppLayout.getHeight(20)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  AppColumnlayout(firstext: '23 042',
                    secondtext: 'Miles',alignment:
                    CrossAxisAlignment.start,isColor: false,
                  ),
                  AppColumnlayout(firstext: 'Airline CO ',
                    secondtext: 'Recived from',alignment:
                    CrossAxisAlignment.end,isColor: false,
                  ),
                ],),
                Gap(AppLayout.getHeight(20)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnlayout(firstext: '24',
                      secondtext: 'Miles',alignment:
                      CrossAxisAlignment.start,isColor: false,
                    ),
                    AppColumnlayout(firstext: 'McDonals ',
                      secondtext: 'Recived from',alignment:
                      CrossAxisAlignment.end,isColor: false,
                    ),
                  ],),
                Gap(AppLayout.getHeight(20)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnlayout(firstext: '52 340',
                      secondtext: 'Miles',alignment:
                      CrossAxisAlignment.start,isColor: false,
                    ),
                    AppColumnlayout(firstext: 'Exuma ',
                      secondtext: 'Recived from',alignment:
                      CrossAxisAlignment.end,isColor: false,
                    ),
                  ],),
                Gap(AppLayout.getHeight(25)),
                Center(
                  child: Column (
                    children: [
                      Text('How To GET More Miles',style: Styles
                          .headLineStyle4,)
                    ],
                  ),
                ),







              ],
            ),
          ),

        ],
      ),
    );
  }
}
