import 'package:flutter/material.dart';
import 'package:flutter_portfolio/globals/app_assets.dart';
import 'package:flutter_portfolio/globals/app_colors.dart';
import 'package:flutter_portfolio/globals/app_text_styles.dart';
import 'package:flutter_portfolio/globals/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animate_do/animate_do.dart';

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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Portfolio',
              style: ApptextStyles.headerTextStyle2(),
            ),
            const Spacer(),
            Text(
              'Inicio',
              style: ApptextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Sobre',
              style: ApptextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Serviços',
              style: ApptextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Portfolio',
              style: ApptextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Contato',
              style: ApptextStyles.headerTextStyle(),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
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
                      Center(
                        child: Center(
                          child: FadeInDown(
                            duration: const Duration(milliseconds: 2000),
                            child: Text(
                              'Olá, seja bem-vindo,',
                              style: ApptextStyles.montseratStyle(
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Constants.sizedBox(height: 15.0),
                      FadeInRight(
                        duration: const Duration(milliseconds: 2000),
                        child: Text(
                          'Meu nome é Rodrigo Lopes',
                          style: ApptextStyles.headingStyles(),
                        ),
                      ),
                      Constants.sizedBox(height: 15.0),
                      Row(
                        children: [
                          Text(
                            'Sou ',
                            style: ApptextStyles.montseratStyle(
                                color: Colors.white),
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
                            repeatForever: true,
                          )
                        ],
                      ),
                      Constants.sizedBox(height: 15.0),
                      SizedBox(
                        width: size.width * 0.5,
                        child: Text(''' 
          Apaixonado por tecnologia, motivado pela curiosidade e com vontade de sempre querer avançar mais!
          Já fui do ramo administrativo/comercial, parti para área técnica aprofundei em tecnologias da informação e agora cada vez mais mergulhando no universo da programação.
          
          // Graduado em Tecnólogo de Gestão de Telecomunicações no INATEL
          // Atualmente estudante de Análise e Desenvolvimento de Sistemas na Faculdade Estácio.                          ''',
                            style: ApptextStyles.normalStyle()),
                      ),
                      Constants.sizedBox(height: 22),
                      Row(
                        children: [
                          buildSocialButton(asset: AppAssets.linkedin),
                          Constants.sizedBox(widht: 12.0),
                          buildSocialButton(asset: AppAssets.github),
                          Constants.sizedBox(widht: 12.0),
                          buildSocialButton(asset: AppAssets.insta),
                          Constants.sizedBox(widht: 12.0),
                          buildSocialButton(asset: AppAssets.facebook),
                          Constants.sizedBox(widht: 12.0),
                          buildSocialButton(asset: AppAssets.twitter),
                          Constants.sizedBox(widht: 12.0),
                        ],
                      ),
                      Constants.sizedBox(height: 22),
                      buildMaterialBuild(onTap: () {}),
                      const SizedBox(
                        height: 60,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  MaterialButton buildMaterialBuild({
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.themeColor,
      splashColor: AppColors.lowGreen,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      hoverColor: AppColors.aqua,
      elevation: 6,
      height: 46,
      minWidth: 130,
      focusElevation: 12,
      child: Text(
        "Download CV",
        style: ApptextStyles.headerTextStyle(),
      ),
    );
  }

  Ink buildSocialButton({required String asset}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.bgColor, width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        borderRadius: BorderRadius.circular(700.0),
        hoverColor: AppColors.aqua,
        splashColor: AppColors.lowGreen,
        onTap: () {},
        child: Image.asset(
          asset,
          width: 10,
          height: 24,
          color: AppColors.themeColor,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
