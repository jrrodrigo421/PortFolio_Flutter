import 'package:flutter/material.dart';
import 'package:flutter_portfolio/globals/app_colors.dart';
import 'package:flutter_portfolio/globals/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 80,
        titleSpacing: 60,
        elevation: 0,
        title: Row(
          // children: [
          crossAxisAlignment: CrossAxisAlignment.end,
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 60.0),
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Portfolio',
              style: ApptextStyles.headerTextStyle2(),
            ),
            Spacer(),
            Text(
              'Home',
              style: ApptextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              'About',
              style: ApptextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              'Services',
              style: ApptextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              'Portfolio',
              style: ApptextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              'Contact',
              style: ApptextStyles.headerTextStyle(),
            ),
          ],
          //   ),
          // ),
          // ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'testando00',
                    style: ApptextStyles.monteseratStyle(),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
