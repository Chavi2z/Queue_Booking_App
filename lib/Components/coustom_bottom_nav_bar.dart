import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queue_booking_app/Screen/HomeScreen/HomeScreen.dart';
import 'package:queue_booking_app/Screen/Profile/profile.dart';
import 'package:queue_booking_app/Themes/constants.dart';

import '../enum.dart';

class CuttomBottomNavBar extends StatelessWidget {
  const CuttomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFFFFFFF);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFF517EC3),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: SvgPicture.asset(
                    "assets/bottomBar/home.svg",
                    color: MenuState.home == selectedMenu
                        ? ksecondaryColor
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }),
              IconButton(
                  icon: SvgPicture.asset(
                    "assets/bottomBar/Queue.svg",
                    color: MenuState.queue == selectedMenu
                        ? ksecondaryColor
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => ArriveQ()),
                    // );
                  }),
              IconButton(
                  icon: SvgPicture.asset(
                    "assets/bottomBar/Profile.svg",
                    color: MenuState.profile == selectedMenu
                        ? ksecondaryColor
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  }),
            ],
          )),
    );
  }
}
