import 'package:flutter/material.dart';
import 'package:queue_booking_app/Components/coustom_bottom_nav_bar.dart';
import 'package:queue_booking_app/Screen/Food_List/Thai_food/component/Thai_food_body.dart';

import '../../../enum.dart';

class ThaiFood extends StatefulWidget {
  @override
  _ThaiFoodState createState() => _ThaiFoodState();
}

class _ThaiFoodState extends State<ThaiFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thai Food"),
      ),
      body: Body(),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
