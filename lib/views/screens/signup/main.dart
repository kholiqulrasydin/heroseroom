import 'package:flutter/material.dart';
import 'package:heros/views/constant/colors.dart';
import 'package:heros/views/constant/size.dart';
import 'package:heros/views/constant/texts.dart';
import 'package:heros/views/screens/login/main.dart';
import 'package:heros/views/widgets/checkbox.dart';
import 'package:heros/views/widgets/login_option.dart';
import 'package:heros/views/widgets/primary_button.dart';
import 'package:heros/views/widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Create Account',
                style: titleText,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Row(
                children: [
                  Text(
                    'Already a member?',
                    style: subTitle,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogInScreen()));
                    },
                    child: Text(
                      'Log In',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: SignUpForm(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: CheckBox(text: 'Agree to terms and conditions.'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: CheckBox(text: 'I have at least 18 years old.',),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: PrimaryButton(buttonText: 'Sign Up'),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Or log in with:',
                style: subTitle.copyWith(color: kBlackColor),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: LoginOption(),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}