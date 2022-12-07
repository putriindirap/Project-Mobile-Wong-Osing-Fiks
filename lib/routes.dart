// import 'dart:js';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pbl/Screens/Login/LoginScreens.dart';
import 'package:flutter_pbl/Screens/Register/Registrasi.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen()
};

// final Map<String, WidgetBuilder> routes = {
  
// };