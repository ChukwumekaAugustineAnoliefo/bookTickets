import 'package:book_tickets/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTcketsTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  AppTcketsTabs({Key? key, required this.secondTab, required this.firstTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        child: Row(
          children: [
            /* airline Tickets */
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50)),
                  ),
                  color: Colors.white),
              child: Center(child: Text(firstTab)),
            )
            /* Hotels */
            ,
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeight(50)),
                  ),
                  color: Colors.transparent),
              child: Center(child: Text(secondTab)),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          ),
          color: const Color(0xfff4f6fd),
        ),
      ),
    );
  }
}
