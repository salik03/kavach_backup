import 'package:flutter/material.dart';
import 'package:kavach/src/constants/sizes.dart';
import 'package:kavach/src/features/authentication/models/model_on_boarding.dart';



class OnBoardingPageWidget extends StatelessWidget {




  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: model.height * 0.5,),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.headlineSmall,),
              Text(model.subTitle, textAlign: TextAlign.center,),
            ],
          ),
          Text(model.counterText, style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 50.0)
        ],
      ),
    );
  }
}