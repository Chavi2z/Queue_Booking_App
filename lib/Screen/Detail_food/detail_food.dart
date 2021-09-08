import 'package:flutter/material.dart';
import 'package:queue_booking_app/Components/coustom_bottom_nav_bar.dart';
import 'package:queue_booking_app/Screen/Detail_food/components/detail_food_body.dart';

import '../../enum.dart';


class DetailFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.home),
      //  backgroundColor: kMainApp,
      body: Body(),
    );
  }
}
