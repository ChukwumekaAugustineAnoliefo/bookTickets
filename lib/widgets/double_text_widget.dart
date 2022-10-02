import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  final String textUpcoming;
  final String textViewAll;
  const AppDoubleText(
      {Key? key, required this.textViewAll, required this.textUpcoming})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textUpcoming,
          style: Styles.headlineStyle2,
        ),
        InkWell(
          onTap: () {
            print('You are tapped');
          },
          child: Text(
            textViewAll,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
