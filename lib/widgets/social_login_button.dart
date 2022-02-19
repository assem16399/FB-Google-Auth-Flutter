import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {Key? key,
      required this.text,
      required this.iconData,
      required this.onButtonPressed,
      this.color})
      : super(key: key);

  final String text;
  final IconData iconData;
  final void Function() onButtonPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: FaIcon(
        iconData,
        size: 30,
      ),
      onPressed: onButtonPressed,
      label: Text(
        text,
        style: const TextStyle(fontSize: 25),
      ),
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(
            const Size(double.infinity, 50),
          ),
          backgroundColor: MaterialStateProperty.all(
              color ?? Theme.of(context).primaryColor)),
    );
  }
}
