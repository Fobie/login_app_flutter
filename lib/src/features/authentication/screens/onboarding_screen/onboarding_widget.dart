import 'package:flutter/material.dart';
import 'package:login_app/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(15),
      color: model.color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: size.height * 0.5,),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                model.subtitle,
                textAlign: TextAlign.center ,
              ),
            ],
          ),
          Text(
            model.counter,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(
            height: 50 ,
          )
        ],
      ),
    );
  }
}
