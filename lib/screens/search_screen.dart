import 'package:bookticket/utils/applayout.dart';
import 'package:bookticket/widgets/icon_text.dart';
import 'package:bookticket/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';
import '../widgets/text widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are \n you are looking for ?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
           const AppTicketTabs(firsttab: 'Airline Tickets',Secondtab: 'Hotels',),
          Gap(AppLayout.getHeight(20)),
           AppIconText(iconData: Icons.flight_takeoff_rounded,text: "Depature"),

          Gap(AppLayout.getHeight(20)),
          AppIconText(iconData: Icons.flight_takeoff_rounded,text: "Arrival"),
          Gap(AppLayout.getHeight(30)),
          Container(
               padding:EdgeInsets.symmetric(vertical: AppLayout.getWidth(18),
                 horizontal: AppLayout.getWidth(18)),
               decoration: BoxDecoration(
                color: Colors.blue,
               borderRadius: BorderRadius.circular(AppLayout.getWidth(10))
          ),

          child:Center(
            child: Text (
                 "Find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
             ),
          ),
          ),
          Gap(AppLayout.getHeight(60)),
          AppTextWidget(bigText: 'Upcoming Flights', smallText: 'View all',),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getWidth(425),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight
                  (15),vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                   BoxShadow(
                     color: Colors.grey.shade200,
                     blurRadius: 1,
                     spreadRadius: 1,
                   ),
                  ]


                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getWidth(190),
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image:DecorationImage(
                          image: AssetImage(
                              "assets/images/sit.jpg"
                          )
                      ),),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text("20% Discount \n on the early \n booking of \n this "
                        "flight,Dont\n miss out\n thus chance ",
                    style: Styles.headLineStyle2,overflow:TextOverflow.ellipsis)
                  ],
                ),

              ),
              Column(
                children: [
                 Stack(
                   children: [
                     Container(
                       width: size.width*0.44,
                       height: AppLayout.getHeight(210),
                       decoration: BoxDecoration(
                           color: Color(0xFF3AB8B8),
                           borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
                       ),
                       padding: EdgeInsets.symmetric(vertical: AppLayout
                           .getHeight(15),horizontal: AppLayout.getHeight(15)),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Discoun\nfor survery",style: Styles
                               .headLineStyle2.copyWith(fontWeight: FontWeight.bold,color:Colors.white),),
                           Gap(AppLayout.getHeight(10)),
                           Text("Take the survey about our services and get "
                               "dicount ",style:
                           Styles
                               .headLineStyle2.copyWith(fontWeight: FontWeight
                               .w500,color:Colors.white,fontSize: 18),),


                         ],


                       ),
                     ),
                     Positioned(
                       right: -45,
                       top: -40,
                       child: Container(
                       padding: EdgeInsets.all(AppLayout.getHeight(30)),
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         border: Border.all(width: 10,color: Color
                           (0xFF189999)),
                         color: Colors.transparent,
                       ),
                     ),)
                   ],
                 ),
                  Gap(AppLayout.getHeight(15)),
                  Container(

                    padding: EdgeInsets.symmetric(vertical: AppLayout
                        .getHeight(15,),horizontal: AppLayout.getHeight(15)),
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Color(0xFFEC6545),

                    ),
                    child: Column(

                      children: [
                        Text("Take Love",style: Styles.headLineStyle2
                            .copyWith(color: Colors.white,fontWeight:
                        FontWeight.bold,),textAlign:TextAlign.center,),
                        Gap(AppLayout.getHeight(15)),
                        RichText(text: TextSpan(
                          children: [TextSpan(
                            text: 'smile face'
                          ),
                            TextSpan(
                                text: 'smile face'
                            ),
                            TextSpan(
                                text: 'smile face'
                            )],
                        ))


                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),



        ],
      ),
    );
  }
}
