import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, this.onPressed, required this.title}) : super(key: key);
  final void Function()?onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return    SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(onPressed: onPressed,
          child: Text(title)),

    );
  }
}