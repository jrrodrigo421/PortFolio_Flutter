import 'package:flutter/material.dart';
import 'package:flutter_portfolio/globals/app_colors.dart';
import 'package:flutter_portfolio/globals/app_text_styles.dart';
import 'package:flutter_portfolio/globals/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
              'Inicio',
              style: ApptextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              'Sobre',
              style: ApptextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              'Serviços',
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
              'Contato',
              style: ApptextStyles.headerTextStyle(),
            ),
          ],
          //   ),
          // ),
          // ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: size.height * 0.2,
            left: size.height * 0.2,
            right: size.height * 0.2),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Olá, seja bem-vindo,',
                      style: ApptextStyles.montseratStyle(color: Colors.white),
                    ),
                    Constants.sizedBox(height: 15),
                    Text(
                      'Meu nome é Rodrigo Lopes',
                      style: ApptextStyles.headingStyles(),
                    ),
                    Constants.sizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          'Sou ',
                          style:
                              ApptextStyles.montseratStyle(color: Colors.white),
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Desenvolvedor de Software',
                              textStyle: ApptextStyles.montseratStyle(
                                  color: Colors.limeAccent),
                            ),
                            TyperAnimatedText(
                              'SantaRitense',
                              textStyle: ApptextStyles.montseratStyle(
                                  color: Colors.limeAccent),
                            ),
                            TyperAnimatedText(
                              'curioso por tudo',
                              textStyle: ApptextStyles.montseratStyle(
                                  color: Colors.limeAccent),
                            ),
                          ],
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        )
                      ],
                    ),
                    Constants.sizedBox(height: 15),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          ' Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, '
                          'when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                          style: ApptextStyles.normalStyle()),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
