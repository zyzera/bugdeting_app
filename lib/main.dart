import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:budget_app/home_page.dart';

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
        canvasColor: Colors.black,
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            size: 100,
            color: Colors.white,
          ),
          unselectedIconTheme: IconThemeData(
            size: 50,
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
