import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_login_with_bloc/cubits/auth_cubit/auth_cubit.dart';
import '/widgets/social_login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login With:',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SocialLoginButton(
                    text: 'Facebook',
                    iconData: FontAwesomeIcons.facebook,
                    onButtonPressed: () {
                      BlocProvider.of<AuthCubit>(context).loginWithFacebook();
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SocialLoginButton(
                    text: 'Google',
                    iconData: FontAwesomeIcons.google,
                    onButtonPressed: () {},
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
