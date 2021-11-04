
import 'package:flutter/material.dart';


//Screen Package
import 'package:moushai_hardware/screen/login_screen.dart';
import 'package:moushai_hardware/screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'routes for page',
      initialRoute: 'LoginScreen',
      routes: {
        'LoginScreen':(context) => const LoginScreen(),
        'HomeScreen':(context)=> const  HomeScreen(),
      },
    )
  );
}
