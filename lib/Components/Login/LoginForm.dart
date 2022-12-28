
import 'package:flutter/material.dart';

import 'package:flutter_pbl/Components/custom_surfix_icon.dart';
import 'package:get/get.dart';
import 'package:flutter_pbl/Components/default_button_custome_color.dart';
import 'package:flutter_pbl/size_config.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_pbl/utils/constants.dart';
import 'package:flutter_pbl/Screens/Register/Registrasi.dart';
import 'package:quickalert/quickalert.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFrom createState() => _SignInFrom();
}

class _SignInFrom extends State<SignInForm> {

  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remember = false;
  final TextEditingController txtUserName = new TextEditingController();
  final TextEditingController txtPassword = new TextEditingController();

  // TextEditingController txtUserName = TextEditingController(),
  //     txtPassword = TextEditingController();

  FocusNode focusNode =new FocusNode();

  @override
  Widget build(BuildContext context){
    return Form(
      child: Column(
        children: [
          buildUserName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [Checkbox(
              value: remember, 
              onChanged: (value) { 
                setState(() {
                  remember = value;
                });
              }),
              Text("Tetap Masuk"),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Lupa Password", 
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "MASUK",
            press: () {
this._dologin();
            },
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RegisterScreen.routeName);
            },
            child: Text(
              "Belum Punya Akun ? Daftar Disini",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
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
        labelStyle: TextStyle(
          color:focusNode.hasFocus ? mSubtitleColor: kPrimaryColor ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
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
        labelStyle: TextStyle(
          color:focusNode.hasFocus ? mSubtitleColor: kPrimaryColor ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        )),
      );
    }


    // Pemanggilan API Login
  Future _dologin() async {
    if (txtUserName.text.isEmpty || txtPassword.text.isEmpty) {
      QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          title: 'Oops...',
          text: 'Sorry, something went wrong',
      );
      return;
    }
    // ProgressDialog progressDialog = ProgressDialog(context);
    // progressDialog.style(message: "loading..");
    // progressDialog.show();
    final response = await http
        .post(Uri.parse('http://localhost/kostin/public/api/login'), body: {
      'email': txtUserName.text,
      'password': txtPassword.text
    }, headers: {
      'Accept': 'application/json'
    });
    // progressDialog.hide();
    if (response.statusCode == 200) {
      // SpUtil.putBool("isLogin", true);
      // SpUtil.putString("email", emailController.text);
      // Get.offAndToNamed(Routes.HOME_INTI);
    } else {
      QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          title: 'Oops...',
          text: 'Sorry, something went wrong',
  );
    }
  }


  }
