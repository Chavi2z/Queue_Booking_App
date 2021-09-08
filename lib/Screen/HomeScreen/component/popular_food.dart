import 'package:flutter/material.dart';
import 'package:queue_booking_app/Screen/HomeScreen/component/food_card.dart';
import 'package:queue_booking_app/Screen/HomeScreen/component/section_title.dart';
import 'package:queue_booking_app/Themes/size_config.dart';
import 'package:queue_booking_app/model/model_food.dart';

class PopularFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Restuarent", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return FoodCard(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
