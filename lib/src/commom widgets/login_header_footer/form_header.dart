import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/src/constants/string.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.imgColor,
    this.imgHeight = 0.2,
    this.imgbetween,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textAlign,
  });

  final String image, title, subtitle;
  final Color? imgColor;
  final double imgHeight;
  final double? imgbetween;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        SvgPicture.asset(
          image,
          height: size.height * imgHeight,
        ),
        SizedBox(
          height: imgbetween,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          subtitle,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
