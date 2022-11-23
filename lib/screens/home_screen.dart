import 'package:bookticket/screens/hotel.dart';
import 'package:bookticket/screens/ticketview.dart';
import 'package:bookticket/utils/app_info_list.dart';
import 'package:bookticket/utils/app_style.dart';
import 'package:bookticket/widgets/text%20widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Styles.bgcolor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                Text("Good Morning",style: Styles.headLineStyle3,),

                Gap(10),
                       Text("Book Tickets",style: Styles.headLineStyle1,),


                     ],
                   ),



                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit:BoxFit.fitHeight,
                          image: AssetImage(
                              "assets/images/img_1.png"
                          ),
                        ),
                      ),
                    ),

                  ],



                ),
                Gap(25),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colors.white
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular,color:
                      Color(0xFFBFC205),),

                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights",style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: (){
                        print("you are tapped");
                      },
                        child: Text("View all",style: Styles.textStyle.copyWith(color: Styles.primarycolor),))
                  ],
                ),

              ],

            ),
          ),
          Gap(15),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20),
          child: Row(
          children:ticketlist.map((singleticket) => TicketView(ticket:
             singleticket,)).toList()

          ),
          ),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AppTextWidget(bigText: 'Hotels', smallText: 'View all',)
          ),
          Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children:hotellist.map((singlehotel) => HotelScreen(hotel:
                singlehotel)).toList()



                ),
          ),


        ],
      ),



    );
  }
}
