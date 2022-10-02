import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/thick_container.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketVIew extends StatelessWidget {
  final Map<String, dynamic> ticketScreen;
  const TicketVIew({Key? key, required this.ticketScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(
          right: AppLayout.getHeight(16),
        ),
        child: Column(
          children: [
            /*
            showing the blue part of the card
             */
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        AppLayout.getHeight(21),
                      ),
                      topRight: Radius.circular(
                        AppLayout.getHeight(21),
                      ))),
              padding: EdgeInsets.all(
                AppLayout.getHeight(21),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${ticketScreen['from']['code']}",
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      ThickContainer(),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                            width: 1,
                                            height: 1,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white)),
                                          )),
                                );
                              },
                            )),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ])),
                      ThickContainer(),
                      const Spacer(),
                      Text(
                        "${ticketScreen['to']['code']}",
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          "${ticketScreen['from']['name']}",
                          style: Styles.headlineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "${ticketScreen['flying_time']}",
                        style:
                            Styles.headlineStyle4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          "${ticketScreen['to']['name']}",
                          textAlign: TextAlign.end,
                          style: Styles.headlineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
            /*
            showing the orange part of the card
             */

            ,
            Container(
              color: Styles.orangeColor,
              // const Color(0xfff37b67),
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(
                        builder: (context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                          (constraints.constrainWidth() / 15).floor(),
                          (index) => SizedBox(
                            height: AppLayout.getHeight(5),
                            width: AppLayout.getWidth(1),
                            child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.white)),
                          ),
                        ),
                      );
                    }),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${ticketScreen['date']}",
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "DATE",
                            style: Styles.headlineStyle4
                                .copyWith(color: Colors.white),
                          ),
                          Gap(5),
                        ],
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "${ticketScreen['departure_time']}",
                              style: Styles.headlineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "Departure time",
                              style: Styles.headlineStyle4
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(5),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${ticketScreen['number']}",
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "Number",
                            style: Styles.headlineStyle4
                                .copyWith(color: Colors.white),
                          ),
                          Gap(5),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
