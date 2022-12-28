// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pbl/Screens/Login/LoginScreens.dart';
import 'package:flutter_pbl/Screens/Register/Registrasi.dart';
import 'package:flutter_pbl/routes.dart';
import 'package:flutter_pbl/theme.dart';

void main() async {
  runApp(MaterialApp(
      title: "WongOsing",
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
      debugShowCheckedModeBanner: false,
    ),
      
    
  );
}