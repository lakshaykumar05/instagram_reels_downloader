import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:instagram_reels_downloader/startScreen.dart';

void main() async{
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        // debugShowCheckedModeBanner: false,
        // color: Colors.white12,
        // theme: ThemeData(
        //   primarySwatch: Colors.deepPurple,
        //   visualDensity: VisualDensity.adaptivePlatformDensity,
        // ),
        home: startScreen(),
      );
  }
}
