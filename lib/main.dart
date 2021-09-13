import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:budget_app/home_page.dart';
import 'package:budget_app/step_progress_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Budget App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        tabBarTheme: TabBarTheme(labelColor: Colors.black),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          selectedIconTheme: IconThemeData(
            size: 70,
            color: Color(0xffFFD700),
          ),
          unselectedIconTheme: IconThemeData(
            size: 40,
            color: Colors.grey[500],
          ),
        ),
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => MyHomePage(title: 'Title')),
      ],
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
