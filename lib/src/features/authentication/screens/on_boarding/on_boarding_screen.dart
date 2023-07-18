import 'package:flutter/material.dart';
import 'package:kavach/src/constants/colors.dart';
import 'package:kavach/src/constants/image_strings.dart';
import 'package:kavach/src/constants/sizes.dart';
import 'package:kavach/src/constants/text_strings.dart';
import 'package:kavach/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:kavach/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingScreen extends StatelessWidget{
  const OnBoardingScreen({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pages = [
      OnBoardingPageWidget(
          model: OnBoardingModel(
            image: commonImageBlank,
            title: tOnBoardingTitle1,
            subTitle: tOnBoardingSubTitle1,
            counterText: tOnBoardingCounter1,
            height: size.height,
            bgColor: tOnBoardingPage1Color

      ),
      ),
      OnBoardingPageWidget(
          model: OnBoardingModel(
            image: commonImageBlank,
            title: tOnBoardingTitle2,
            subTitle: tOnBoardingSubTitle2,
            counterText: tOnBoardingCounter2,
            height: size.height,
            bgColor: tOnBoardingPage2Color

      ),
      ),
      OnBoardingPageWidget(
          model: OnBoardingModel(
            image: commonImageBlank,
            title: tOnBoardingTitle3,
            subTitle: tOnBoardingSubTitle3,
            counterText: tOnBoardingCounter3,
            height: size.height,
            bgColor: tOnBoardingPage3Color

      ),
      ),
    ];


    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
              pages: pages,)
        ],
      ),
    );
  }
}


