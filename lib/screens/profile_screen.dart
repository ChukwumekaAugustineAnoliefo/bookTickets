import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(10),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/images/img_1.png")),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headlineStyle,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    "New-York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(100),
                      ),
                      color: const Color(0xfffef4f3),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xff526799),
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(
                          AppLayout.getHeight(5),
                        ),
                        Text(
                          "Premium status",
                          style: TextStyle(
                              color: Color(0xff526799),
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(
                          AppLayout.getHeight(5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (() => print("You are tapped")),
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(
            AppLayout.getHeight(8),
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(
            AppLayout.getHeight(8),
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xff264cd2))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(25),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\ 'v got a new award",
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You have 95 flight in a year",
                          style: Styles.headlineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(
            AppLayout.getHeight(25),
          ),
          Text("Accumulated miles", style: Styles.headlineStyle2),
          Container(
            child: Column(
              children: [
                Gap(
                  AppLayout.getHeight(15),
                ),
                Text(
                  "134098",
                  style: TextStyle(
                      fontSize: 45,
                      color: Styles.textColor,
                      fontWeight: FontWeight.w600),
                ),
                Gap(
                  AppLayout.getHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles covered",
                        style: Styles.headlineStyle4.copyWith(fontSize: 16)),
                    Text("31 Jan 2022",
                        style: Styles.headlineStyle4.copyWith(fontSize: 16)),
                  ],
                ),
                Gap(
                  AppLayout.getHeight(4),
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(
                  AppLayout.getHeight(4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firsText: '45 890',
                      secondText: 'Miles',
                      isColor: false,
                    ),
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firsText: 'Airline Co',
                      secondText: 'Recieved from',
                      isColor: false,
                    ),
                  ],
                ),
                Gap(
                  AppLayout.getHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firsText: '48',
                      secondText: 'Miles',
                      isColor: false,
                    ),
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firsText: 'McDonal\'s',
                      secondText: 'Recieved from',
                      isColor: false,
                    ),
                  ],
                ),
                Gap(
                  AppLayout.getHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firsText: '23 789',
                      secondText: 'Miles',
                      isColor: false,
                    ),
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firsText: 'Exuma',
                      secondText: 'Recieved from',
                      isColor: false,
                    ),
                  ],
                ),
                Gap(25),
                InkWell(
                  onTap: () {
                    print("you are tapped");
                  },
                  child: Text(
                    "How to get more miles",
                    style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
