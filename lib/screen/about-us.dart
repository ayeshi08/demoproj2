// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tutorialproj/screen/Dresses-screen.dart';
// import 'package:tutorialproj/screen/Foot-wear-screen.dart';
// import 'package:tutorialproj/screen/Jewellery-screen.dart';
//
// import '../Controller/checkbox-changed-controller.dart';
//
// class AboutUs extends StatefulWidget {
//   AboutUs({super.key});
//
//   @override
//   State<AboutUs> createState() => _CheckScreenState();
// }
//
// class _CheckScreenState extends State<AboutUs> {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth=MediaQuery.of(context).size.width;
//     double screenHeight=MediaQuery.of(context).size.height;
//     return Scaffold( resizeToAvoidBottomInset : false,
//       backgroundColor: Colors.black,
//       appBar: AppBar(centerTitle: true,
//         backgroundColor: Colors.red.shade900,
//         title: Text(
//           'About Us',
//           style: TextStyle(fontSize: 20, color: Colors.white),
//         ),
//       ),
//       body: Column(
//         children: [
//           //Container(color: Colors.black,),
//           Center(
//               child: Padding(
//                 padding:  EdgeInsets.only(top: 20.0),
//                 child: CircleAvatar(
//                             backgroundColor: Colors.transparent,
//                             radius: 100,
//                             backgroundImage: AssetImage(
//                 'assets/images/sale-tag.jpg',
//                             ),
//                             child: Text(''),
//                           ),
//               )),
//           Container(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 12,
//                 ),
//                 Text(
//                   'My Fashion App',
//                   style: TextStyle(fontSize: 29, color: Colors.yellow),
//                 ),
//                 SizedBox(height: 10,),
//                 Text('Explore Style',style: TextStyle(fontSize: 15, color: Colors.white
//                 ),),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(height: 344,
//                  width: 300,
//                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only( topRight: Radius.circular(35.0),
//                    topLeft: Radius.circular(35.0),
//                  )),
//
//
//                  // width: screenWidth,
//                   child: Padding(
//                     padding: const EdgeInsets.all(25.0),
//                     child: Column(
//                       children: [
//                         Text('About The App',style: TextStyle(fontSize: 23,fontWeight:FontWeight.w600),),
//                         SizedBox(height: 8,),
//                         Text(
//                             'My fashion App is ultimate Fashion App for all lovers with Fashionista, you can browse the latest fashion trends and get Tips about fashion and create your own fashion looks,weather you are a fashion blogger , a stylist or just someone who loves Fashion.My fashion app has everything you need to stay up to date and look your best.',
//                         style: TextStyle(fontSize: 16),),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
