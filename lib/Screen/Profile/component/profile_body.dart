import 'package:flutter/material.dart';
import 'package:queue_booking_app/Auth/auth_screen.dart';
import 'package:queue_booking_app/Screen/Profile/component/profile_menu.dart';
import 'package:queue_booking_app/Screen/Profile/component/profile_pic.dart';
import 'package:queue_booking_app/Themes/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          Text(
            'Chatchadaporn',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: getProportionateScreenWidth(20),
              color: Color(0xFF3961ab),
            ),
          ),
          SizedBox(height: 20),

          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          // ProfileMenu(
          //   text: "Settings",
          //   icon: "assets/icons/Settings.svg",
          //   press: () {},
          // ),
          // ProfileMenu(
          //   text: "Help Center",
          //   icon: "assets/icons/Question mark.svg",
          //   press: () {},
          // ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AuthScreen()));
            },
          ),
        ],
      ),
    );
  }
}
