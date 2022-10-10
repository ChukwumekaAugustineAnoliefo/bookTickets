import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:book_tickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';
class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getWidth(20)),
            children: [
              Gap(
                AppLayout.getHeight(40),
              ),
              Text(
                'Tickets',
                style: Styles.headlineStyle,
              ),
              Gap(
                AppLayout.getHeight(20),
              ),
              AppTcketsTabs(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              Gap(
                AppLayout.getHeight(20),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketVIew(
                  ticketScreen: ticketList[0],
                  isColor: true,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                padding: EdgeInsets.only(
                    left: AppLayout.getHeight(
                      10,
                    ),
                    top: AppLayout.getHeight(
                      20,
                    ),
                    right: AppLayout.getHeight(
                      15,
                    )),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          firsText: '  Flutter DB',
                          secondText: 'Passenger',
                          isColor: false,
                        ),
                        AppColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firsText: '5332  123456',
                          secondText: '             passport',
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    AppLauoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5.0,
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          firsText: '  1122 222 55312',
                          secondText: 'Number of E-ticket',
                          isColor: false,
                        ),
                        AppColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firsText: '      S4RD45',
                          secondText: 'Booking code',
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    AppLauoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5.0,
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 11,
                                ),
                                Text(
                                  " *** 3478",
                                  style: Styles.headlineStyle3,
                                )
                              ],
                            ),
                            Gap(5),
                            Text(
                              "Payment method",
                              style: Styles.headlineStyle4,
                            ),
                            Gap(
                              AppLayout.getHeight(20),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 20),
                          child: AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firsText: '\$2334.99',
                            secondText: 'Price',
                            isColor: false,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /**
           * 
           * barc code
           */
              BarcodeWidget(barcode: Barcode.code128(),
              data: ,
              )
            ],
          )
        ],
      ),
    );
  }
}
