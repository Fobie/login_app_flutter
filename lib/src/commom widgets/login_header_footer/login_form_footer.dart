import 'package:flutter/material.dart';
import 'package:login_app/src/constants/color.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key, required this.title, required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Or'),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.start),
              label: Text('Sign in with google')
          ),
        ),
        SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: (){},
            child: Text.rich(
                TextSpan(
                    text: title,
                    style: Theme.of(context).textTheme.headlineSmall,
                    children: [
                      TextSpan(
                          text: subtitle,
                          style: TextStyle(color: kPrimaryColor)
                      )
                    ]
                )
            )
        )
      ],
    );
  }
}
