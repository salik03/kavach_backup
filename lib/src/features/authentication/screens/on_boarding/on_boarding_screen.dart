import 'package:flutter/material.dart';
import 'package:kavach/src/constants/colors.dart';
import 'package:kavach/src/constants/image_strings.dart';
import 'package:kavach/src/constants/sizes.dart';
import 'package:kavach/src/constants/text_strings.dart';
import 'package:kavach/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:kavach/src/features/authentication/models/model_on_boarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

    final controller = LiquidController();


    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            slideIconWidget: const Icon(Icons.arrow_back_ios_new),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
              child: OutlinedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  onPrimary: Colors.white,
                ),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                    color: tDarkColor, shape: BoxShape.circle),
                  child: const Icon(Icons.arrow_forward_ios_outlined),
                ),
                ),
              ),
          Positioned(
            top: 50, 
              right:20,
              child: TextButton(
                onPressed: () {},
                child: const Text("Skip", style: TextStyle(color: Colors.grey)),
              ),
          ),
          Positioned(
            bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: controller.currentPage,
                count: 3,
              ),
              ),
        ],
      ),
    );
  }
}


