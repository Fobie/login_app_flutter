import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CO\nDE',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80
              ),
            ),
            Text(
              "Verification",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Enter the verification code sent at support@codewall.com',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){
                print('the code is ${code}');
              },
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
             width: double.infinity,
             child: ElevatedButton(
                 onPressed: (){},
                 child: Text(
                   'Next'
                 )
             )
            )
          ],
        ),
      ),
    );
  }
}
