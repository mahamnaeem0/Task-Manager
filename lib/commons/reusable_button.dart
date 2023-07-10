import 'package:flutter/material.dart';
import 'package:flutter_app/screens/login.dart';


class ReusableButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const ReusableButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 150,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 15,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}