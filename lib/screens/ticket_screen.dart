
import 'package:bookticket/screens/ticketview.dart';
import 'package:bookticket/utils/app_info_list.dart';
import 'package:bookticket/utils/applayout.dart';

import 'package:bookticket/widgets/column_layout.dart';
import 'package:bookticket/widgets/layout_builder.dart';
import 'package:bookticket/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../widgets/layout_builder.dart';
import '../utils/app_style.dart';
import 'package:barcode_widget/barcode_widget.dart';


class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: Stack(
        children:[ ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text('Tickets',style: Styles.headLineStyle1,),
            Gap(AppLayout.getHeight(20)),
           const AppTicketTabs(firsttab: 'Upcoming', Secondtab: 'Previous'),
            Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketlist[0],isColor: true,),
              ),
           const SizedBox(height: 1),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(13),
                vertical: AppLayout.getHeight(20)

                  ),
              child: Column(

                children: [

                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: const [

                      AppColumnlayout(firstext: 'Flutter DB',
                        secondtext: 'Passenger',alignment:
                          CrossAxisAlignment.start,isColor: false,
                      ),



                      AppColumnlayout(firstext: '5221 47856699',
                        secondtext: 'Passport',alignment:
                          CrossAxisAlignment.end,isColor: false,
                      ),

                    ],

                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilderWidget(sections: 15,isColor: false,width:
                  7,),
                  Gap(AppLayout.getHeight(20)),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: const [

                      AppColumnlayout(firstext: '364738 28274478',
                        secondtext: 'number of tickets',alignment:
                          CrossAxisAlignment.start,isColor: false,
                      ),



                      AppColumnlayout(firstext: 'B2SG28',
                        secondtext: 'Booking Code',alignment:
                        CrossAxisAlignment.end,isColor: false,
                      ),

                    ],

                  ),
                  Gap(AppLayout.getHeight(25)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/visa.png",scale: 11,),
                              Text("***244",style: Styles.headLineStyle3,)
                            ],

                          ),
                          const Gap(5),
                          Text('Payment method',style: Styles.headLineStyle4,)
                        ],
                      ),
                      const AppColumnlayout(firstext: '\$249.99',
                        secondtext: 'Price',alignment:
                        CrossAxisAlignment.end,isColor: false,
                      ),



                    ],
                  ),
                  const SizedBox(height: 1),
                ],
              ),
            ),
            /*
            bar code
             */
            Container(
              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(AppLayout.getHeight(21)),
                  bottomLeft: Radius.circular(AppLayout.getHeight(21))
                ),
              ),
              margin: EdgeInsets.only(left: AppLayout.getHeight(15),right:
              AppLayout.getHeight(15)),
              padding: EdgeInsets.only(top: AppLayout.getHeight(20),bottom:
              AppLayout.getHeight(20)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect (
                  borderRadius:BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(data: 'hello flutter',
                    barcode:
                  Barcode
                      .code128(),drawText: false,
                  color: Styles.textcolor,
                  width: double.infinity,
                  height: 60,),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketlist[0],),
            ),
            
          ],
        ),
          Positioned(
            left: AppLayout.getHeight(23),
            top: AppLayout.getHeight(300),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:Border.all(color: Styles.textcolor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor:Styles.textcolor ,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(23),
            top: AppLayout.getHeight(300),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border:Border.all(color: Styles.textcolor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor:Styles.textcolor ,
              ),
            ),
          ),

      ],
      ),
    );
  }
}
