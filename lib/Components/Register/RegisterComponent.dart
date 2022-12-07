import 'package:flutter/material.dart';
import 'package:flutter_pbl/Components/Register/RegisterForm.dart';
import 'package:flutter_pbl/size_config.dart';
import 'package:flutter_pbl/utils/constants.dart';
import 'package:simple_shadow/simple_shadow.dart';


class RegisterComponent extends StatefulWidget {
  @override
  _RegisterComponent createState() => _RegisterComponent();
}

class _RegisterComponent extends State<RegisterComponent> {
  @override 
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SimpleShadow(
                    child: Image.asset(
                  "assets/kostin.png", 
                  height: 150,
                  width: 202,
                  ),
                  opacity: 0.5,
                  color: kSecondaryColor,
                  offset: Offset(5, 5),
                  sigma: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Daftar !",
                          style: mTitleStyle,
                        )
                      ]
                    )),
                  SizedBox(
                    height: 20,
                  ),
                  SignUpForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}