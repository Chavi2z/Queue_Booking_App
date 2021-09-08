import 'package:flutter/material.dart';
import 'package:queue_booking_app/Login/components/login_body.dart';
import 'package:queue_booking_app/Themes/size_config.dart';


class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: LoginBody(),
    );
  }
}
