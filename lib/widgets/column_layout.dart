import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firsText;
  final bool? isColor;

  final String secondText;
  const AppColumnLayout(
      {Key? key,
      required this.firsText,
      this.isColor,
      required this.secondText,
      required this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  firsText,
                  style: isColor == null
                      ? Styles.headlineStyle3.copyWith(color: Colors.white)
                      : Styles.headlineStyle3,
                ),
                Gap(
                  AppLayout.getHeight(5),
                ),
                Text(
                  secondText,
                  style: isColor == null
                      ? Styles.headlineStyle4.copyWith(color: Colors.white)
                      : Styles.headlineStyle4,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
