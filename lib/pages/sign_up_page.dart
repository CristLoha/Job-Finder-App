import 'package:flutter/material.dart';

import 'package:jobby_app/shared/theme.dart';
import 'package:jobby_app/widgets/custom_button.dart';
import 'package:jobby_app/widgets/input_custom.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 106,
          left: 35,
        ),
        child: Text(
          'Welcome!\nPlease sign up now',
          style: primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget inputRegister() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        margin: EdgeInsets.only(
          top: 40,
        ),
        child: Column(
          children: [
            InputCustom(
              icon: 'assets/people_icon.png',
              hintTitle: 'Fullname',
            ),
            SizedBox(height: 20),
            InputCustom(
              icon: 'assets/email_icon.png',
              hintTitle: 'Email',
            ),
            SizedBox(height: 20),
            InputCustom(
              icon: 'assets/password_icon.png',
              hintTitle: 'Password',
              obscureText: true,
            ),
          ],
        ),
      );
    }

    Widget buttonRegister() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            CustomButton(
              title: 'Register',
              onPressed: () => Navigator.pushNamed(context, '/home-page'),
            ),
            SizedBox(height: defaultMargin),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: defaultMargin,
              ),
              child: Text(
                'or continue with',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),

            /// NOTE: BUTTON GOOGLE
            Container(
              width: double.infinity,
              height: 64,
              child: OutlinedButton(
                style: TextButton.styleFrom(
                  backgroundColor: kBackgroundColor1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/google_icon.png', width: 20),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Google Account',
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 124,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(width: 4),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/'),
                  child: Text(
                    'Sign in',
                    style: blueTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 74)
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor1,
      body: SafeArea(
        child: ListView(
          children: [
            title(),
            inputRegister(),
            buttonRegister(),
          ],
        ),
      ),
    );
  }
}
