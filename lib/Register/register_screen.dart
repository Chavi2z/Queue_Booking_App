import 'package:flutter/material.dart';
import 'package:queue_booking_app/Register/components/register_body.dart';
import 'package:queue_booking_app/Themes/size_config.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/Register";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: RegisterBody(),
    );
  }
}
