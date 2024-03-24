import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    super.key,
    required this.onTap,
    required this.title,
    required this.subtitle,
    required this.icon
  });

  final VoidCallback onTap;
  final IconData icon;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Icon(icon, size: 60,),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
