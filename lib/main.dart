import 'package:api/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page:() => HomeScreen()),
      ],
    ),
  );
}
