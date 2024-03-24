import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/src/constants/string.dart';

class LoginFormHeader extends StatelessWidget {
  const LoginFormHeader({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          height: size.height * 0.2,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
