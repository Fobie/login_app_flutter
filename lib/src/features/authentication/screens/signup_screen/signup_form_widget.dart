import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter Your Name",
                    labelText: "Name",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter Your Email",
                    labelText: "Email",
                    border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.numbers),
                    hintText: "Enter Your Number",
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    hintText: "Enter Your Password",
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye)
                    )
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: null, child: Text(
                  'Forget Password',
                  style: Theme.of(context).textTheme.headlineSmall,
                )),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: null, child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.headlineSmall,
                )),
              )
            ],
          ),
        ));
  }
}
