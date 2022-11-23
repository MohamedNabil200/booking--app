import 'package:bookticket/utils/app_style.dart';
import 'package:bookticket/utils/applayout.dart';
import 'package:bookticket/widgets/column_layout.dart';
import 'package:bookticket/widgets/layout_builder.dart';
import 'package:bookticket/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);
  final Map<String,dynamic>ticket;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.87,

      height: AppLayout.getHeight(180),
      child:Container(

        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column (
          children: [
            Container(
              decoration: BoxDecoration(
                color:isColor==null? Color(0xFF526799):Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular
                  (AppLayout.getHeight(isColor==null?21:0)),
                topRight: Radius.circular(AppLayout.getHeight
                  (isColor==null?21:0)))
              ),
             // margin: EdgeInsets.only(left: 16),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],style:isColor==null? Styles
                      .headLineStyle3
                          .copyWith
                        (color:
                      Colors.white):Styles.headLineStyle3),
                      Expanded(child: Container()),
                      ThickContainer(isColor: true,),
                      Expanded(child: Stack(
                        children: [SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(

                              builder: (context,BoxConstraints constraints) {
                                return Flex(direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate((constraints
                                      .constrainWidth()/6).floor(), (index)
                                  => SizedBox(
                                    width: AppLayout.getWidth(3),height:
                                  AppLayout.getHeight(1),
                                    child: DecoratedBox
                                    (decoration: BoxDecoration(
                                    color:isColor==null? Colors.white:Colors
                                        .grey.shade300,
                                  ),),
                                  )),



                                );
                              }
                          ),
                        ),
                          Center(
                            child: Transform.rotate(angle: 1.6,child:Icon(Icons
                                .local_airport_rounded,color:isColor==null?
                            Colors.white:Color(0xFF8ACCF7)),),
                          ),],

                      )
                      ),

                      ThickContainer(isColor: true,),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'],style:isColor==null? Styles.headLineStyle3
                          .copyWith(color:Colors.white,)
                              :Styles.headLineStyle3)
                    ],
                  ),
                  Gap(AppLayout.getHeight(4)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),child: Text
                        (ticket['from']['country name'],style:isColor==null?
                      Styles.headLineStyle4.copyWith(color: Colors.white)
                          :Styles.headLineStyle4,),
                      ),
                      Text(ticket['flying_time'],style:isColor==null? Styles.headLineStyle4.copyWith
                        (color: Colors.white):Styles.headLineStyle4,),

                      SizedBox(
                        width: AppLayout.getWidth(100),child: Text
                        (ticket['to']['country name'],
                        textAlign: TextAlign.end,
                        style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      ),
                    ],
                  ),
                ],
              ),

            ),



            Container(
              color:isColor==null? Styles.orangecolor:Colors.white,
             // margin: EdgeInsets.only(left: 16),
             // padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:isColor==null?  Colors.grey.shade200:Colors.white,
                        borderRadius: BorderRadius.only(topRight:Radius.circular
                          (10),
                        bottomRight: Radius.circular(10),)
                      ),

                    ),
                  ),
               Expanded(child: Padding(
                padding: EdgeInsets.all(12.0),
                child:const AppLayoutBuilderWidget(sections: 15),
              ),
              ),


                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:isColor==null?  Colors.grey.shade200:Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),

                    ),
                  ),
                ],
              ),
            ),
            Container(
              //margin: EdgeInsets.only(left: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color:isColor==null?  Styles.orangecolor:Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius
                      .circular(isColor==null?21:0),
                      bottomLeft: Radius.circular(isColor==null?21:0))
              ),


              child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       AppColumnlayout(firstext: ticket['date'], secondtext:
                       "DATE ", alignment: CrossAxisAlignment.start,isColor:
                       isColor,),
                       AppColumnlayout(firstext:ticket['departure_time'], secondtext:
                       "Departure time ", alignment: CrossAxisAlignment.center,
                         isColor:
                       isColor,),




                       Column(
                         crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           Text(ticket['number'].toString(),
                             style:isColor==null?  Styles.headLineStyle3.copyWith(color: Colors
                                 .white):Styles.headLineStyle3,),
                           Gap(5),
                           Text("NUMBER ",
                             style:isColor==null?  Styles.headLineStyle4.copyWith(color: Colors
                                 .white):Styles.headLineStyle4,)
                         ],
                       ),
                     ],
                   ),
                 ],
              ),

            ),

            ],
        ),
      ) ,
    );
  }
}
