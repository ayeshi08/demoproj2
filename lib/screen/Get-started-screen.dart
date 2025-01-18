import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorialproj/screen/check-screen.dart';

import 'home-screen.dart';
import 'navigation.dart';


class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),

      body:
      SingleChildScrollView(
        child:
                  Padding(
                    padding:   EdgeInsets.only(top: 5),
                    child: Stack(alignment: Alignment.bottomRight,
                      //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container( height:screenHeight,
                         width: screenWidth,
                          child: Image(image: AssetImage('assets/images/sale-tag.jpg',),
                            fit: BoxFit.cover,


                          ),
                        ),
                         SizedBox(height: 20),
                        InkWell(onTap: () {Get.to (Navigation());

                        },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 53.0,horizontal: 28),
                            child: Container(width: 300,
                              height: 55,decoration: BoxDecoration(color: Colors.red.shade900,
                                borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.red.shade900),
                              ),
                              child: Center(child: Text('Get Started',style: TextStyle(color: Colors.white),)),

                            ),
                          ),
                       )
                      ],

                    ),
                  ),
                ),

           // ),

    );
  }
}