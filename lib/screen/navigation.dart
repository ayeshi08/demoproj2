import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorialproj/screen/cart_detail.dart';
import 'package:tutorialproj/screen/home-screen.dart';
import 'package:tutorialproj/screen/product-detail-screen.dart';

import 'Favourite-screen.dart';
import 'Profile-Screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {



int currentIndex=0;
List screens= [
  HomeScreen(),
  FavouriteScreen(),
  //DetailScreen(product: MyProduct()),
  ProfileScreen(),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   appBar: AppBar(backgroundColor: Colors.red.shade900,
    //  // title:
    //   //Text("E - commerce Shop",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),centerTitle: true,
    // actions: [IconButton(onPressed: () {
    //   Get.to(FavouriteScreen());
    // }, icon: Icon(Icons.add_shopping_cart,color:Colors.white,))],),

      body: screens[currentIndex],
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: currentIndex ,
    onTap: (value) {
setState(() {
  currentIndex = value;
}

);

},selectedItemColor: Colors.red.shade900,
        unselectedItemColor: Colors.grey,

   //  );

    items: [
    BottomNavigationBarItem(
    label: "Home",
    icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
    label: "Favourite",
    icon: Icon(Icons.favorite),
    ),
    BottomNavigationBarItem(
    label: "Profile",
    icon: Icon(Icons.person),
    )
    ]),
    );
  }
}
