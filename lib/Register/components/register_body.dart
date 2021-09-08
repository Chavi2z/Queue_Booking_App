import 'package:flutter/material.dart';
import 'package:queue_booking_app/Register/components/register_form.dart';
import 'package:queue_booking_app/Themes/constants.dart';
import 'package:queue_booking_app/Themes/size_config.dart';

class RegisterBody extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                // Image(
                //   image: AssetImage("assets/images/logoname.png"),
                //   height: 100.0,
                // ), // 4%
                Text("Register Account", style: headingStyle),
                Text(
                  "Complete your details ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                RegisterForm(),

                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
