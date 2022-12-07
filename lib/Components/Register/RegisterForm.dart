import 'package:flutter/material.dart';
import 'package:flutter_pbl/Components/custom_surfix_icon.dart';
import 'package:flutter_pbl/Components/default_button_custome_color.dart';
import 'package:flutter_pbl/size_config.dart';
import 'package:flutter_pbl/utils/constants.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpForm createState() => _SignUpForm();
}

class _SignUpForm extends State<SignUpForm> {
  
  TextEditingController txtName = TextEditingController(),
      txtUserName = TextEditingController(),
      txtEmail = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            buildName(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildUserName(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildEmail(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPassword(),
            SizedBox(height: getProportionateScreenHeight(30)),
            DefaultButtonCustomeColor(
              color: kPrimaryColor,
              text: "DAFTAR",
              press: () {},
            ),
            SizedBox(height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Sudah mendaftar ? Klik Disini",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      );
  }

  TextFormField buildName() {
    return TextFormField(
      controller: txtName,
      keyboardType: TextInputType.name,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Name',
        hintText: 'Masukkan nama lengkap anda',
        labelStyle: TextStyle(color: focusNode.hasFocus ? mSubtitleColor: kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg",
        )
      ),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukkan username anda',
        labelStyle: TextStyle(color: focusNode.hasFocus ? mSubtitleColor: kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg",
        )),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.emailAddress,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Masukkan email anda',
        labelStyle: TextStyle(color: focusNode.hasFocus ? mSubtitleColor: kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg",
        )),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukkan password anda',
        labelStyle: TextStyle(color: focusNode.hasFocus ? mSubtitleColor: kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg",
        )),
    );
  }
}