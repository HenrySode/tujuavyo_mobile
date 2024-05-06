import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'package:tujuavyo/components/color.dart';
import 'package:tujuavyo/components/custom_button.dart';
import 'package:tujuavyo/components/form_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: _buildUi(context));
  }

  Widget _buildUi(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.04,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headerText(),
          _loginForm(context),
          _socialLoginButton(context),
          _registerAccountLink(context),
        ],
      ),
    );
  }

  Widget _headerText() {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Welcome back!',
            style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),
          Text(
            'Join us on Tujuavyo and unlock the doors to endless possibilities',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.sizeOf(context).height * 0.02,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CustomFormField(label: 'Email'),
          const SizedBox(
            height: 15,
          ),
          const CustomFormField(label: 'Password'),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
              height: MediaQuery.sizeOf(context).height * 0.07,
              width: MediaQuery.sizeOf(context).width,
              isPrimary: true,
              onPressed: () {
                Navigator.pushNamed(context, '/main');
              },
              text: 'Login'),
          const SizedBox(
            height: 6,
          ),
          const Text(
            'Forgot password',
            style: TextStyle(
              fontSize: 10,
              color: Colors.black38,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Widget _socialLoginButton(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.10,
      width: MediaQuery.sizeOf(context).width,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          'Or signin with ',
          style: TextStyle(
            fontSize: 10,
            color: Colors.black38,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SocialLoginButton(
                height: MediaQuery.sizeOf(context).height * 0.06,
                width: MediaQuery.sizeOf(context).width * 0.45,
                text: "Google",
                fontSize: 10,
                imageWidth: 20,
                buttonType: SocialLoginButtonType.google,
                onPressed: () {}),
            SocialLoginButton(
                height: MediaQuery.sizeOf(context).height * 0.06,
                width: MediaQuery.sizeOf(context).width * 0.45,
                text: "Facebook",
                fontSize: 10,
                imageWidth: 20,
                buttonType: SocialLoginButtonType.facebook,
                onPressed: () {}),
          ],
        )
      ]),
    );
  }

  Widget _registerAccountLink(BuildContext context) {
    return Expanded(
        child: Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account?",
              style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
