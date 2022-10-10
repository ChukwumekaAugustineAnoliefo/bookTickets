import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:book_tickets/widgets/thick_container.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketVIew extends StatelessWidget {
  final Map<String, dynamic> ticketScreen;
  final bool? isColor;
  const TicketVIew({Key? key, required this.ticketScreen, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 181 : 170),
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
                  color:
                      isColor == null ? const Color(0xff526799) : Colors.white,
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
                        style: isColor == null
                            ? Styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle3,
                      ),
                      const Spacer(),
                      ThickContainer(isColor: true),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: AppLauoutBuilderWidget(
                            sections: 6,
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor == null
                                  ? Colors.white
                                  : Color(0xff8accf7),
                            ),
                          ),
                        ),
                      ])),
                      ThickContainer(isColor: true),
                      const Spacer(),
                      Text(
                        "${ticketScreen['to']['code']}",
                        style: isColor == null
                            ? Styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle3,
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
                          style: isColor == null
                              ? Styles.headlineStyle4.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headlineStyle4,
                        ),
                      ),
                      Text(
                        "${ticketScreen['flying_time']}",
                        style: isColor == null
                            ? Styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          "${ticketScreen['to']['name']}",
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headlineStyle4.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headlineStyle4,
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
              color: isColor == null ? Styles.orangeColor : Colors.white,
              // const Color(0xfff37b67),
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
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
                                decoration: BoxDecoration(
                                    color: isColor == null
                                        ? Colors.white
                                        : Colors.grey.shade300)),
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
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
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
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                      bottomRight: Radius.circular(isColor == null ? 21 : 0))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firsText: "${ticketScreen['date']}",
                        secondText: "DATE",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firsText: "${ticketScreen['departure_time']}",
                        secondText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firsText: "${ticketScreen['number']}",
                        secondText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
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
