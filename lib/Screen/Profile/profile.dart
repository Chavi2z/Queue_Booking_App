import 'package:flutter/material.dart';
import 'package:queue_booking_app/Components/coustom_bottom_nav_bar.dart';
import 'package:queue_booking_app/Screen/Profile/component/profile_body.dart';

import '../../enum.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
