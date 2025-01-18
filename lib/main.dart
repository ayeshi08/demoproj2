import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:tutorialproj/provider/cart-provider.dart';
import 'package:tutorialproj/screen/Favourite-screen.dart';

import 'provider/favorite-provider.dart';
import 'screen/Get-started-screen.dart';
import 'screen/check-screen.dart';

void main() {
  runApp(

      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MultiProvider(
    providers:[
      ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ChangeNotifierProvider(create: (_)=> CartProvider()),
    ],

    child:  GetMaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home:  Home(),
    ),
    );
  

}


