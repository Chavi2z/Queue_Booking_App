import 'package:flutter/material.dart';
import 'package:queue_booking_app/Register/register_screen.dart';
import 'package:queue_booking_app/Themes/constants.dart';
import 'package:queue_booking_app/Themes/size_config.dart';


class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterScreen()));
          },
          child: Text(
            "Register",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16), color: kMainApp),
          ),
        ),
      ],
    );
  }
}
