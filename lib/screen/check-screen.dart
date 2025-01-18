// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tutorialproj/screen/Dresses-screen.dart';
// import 'package:tutorialproj/screen/Foot-wear-screen.dart';
// import 'package:tutorialproj/screen/Jewellery-screen.dart';
//
// import '../Controller/checkbox-changed-controller.dart';
// import 'about-us.dart';
// class CheckScreen extends StatefulWidget {
//   CheckScreen({super.key});
//
//   @override
//   State<CheckScreen> createState() => _CheckScreenState();
// }
//
// class _CheckScreenState extends State<CheckScreen> {
//   final ToDoListController toDoListController = Get.put(ToDoListController());
//   void CheckBoxChanged (bool? value , int index) {
//     setState(() {
//       toDoListController.toDoList[index][1]=!toDoListController.toDoList[index][1];
//     });
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.red.shade900,
//         title: Text('Product Screen',style: TextStyle(fontSize: 20,color: Colors.white),),
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 15,),
//           //Container(color: Colors.black,),
//           CircleAvatar(backgroundColor: Colors.transparent,
//             radius: 70,
//             backgroundImage: AssetImage('assets/images/sale-tag.jpg',),
// child:
// Align(alignment: Alignment.bottomRight,
//     child: Container(width: 110,height: 45,
//         decoration: BoxDecoration( color:Colors.red.shade900,borderRadius: BorderRadius.circular(13),),
//         child:
//         Padding(
//           padding:  EdgeInsets.symmetric(horizontal: 3.0),
//           child: GestureDetector(onTap: () {
//             Get.to(AboutUs());
//           },
//             child: Row(
//               children: [
//                 Text('About Us',style: TextStyle(color: Colors.white),),
//                 SizedBox(width: 12,),
//                 Icon(Icons.arrow_forward_ios,size: 18,color: Colors.white,),
//               ],
//             ),
//           ),
//         ))),
//         ),
//           SizedBox(height: 20,),
//           Text('Explore Varieties',style: TextStyle(color: Colors.yellow,fontSize: 20),),
//           Container(color: Colors.transparent,
//             child: Column(
//               children: [
//                 InkWell(onTap: () {
//                   Get.to(FootWearScreen());
//                 },
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 18),
//                     child: Container(width: 280,height: 55,
//                       decoration: BoxDecoration(color:Colors.red.shade900,border: Border.all(color: Colors.black),
//                         borderRadius: BorderRadius.circular(13),),
//                       child:
//                       Center(child: Text('Foot Wear',style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.w800),)),
//                     ),
//                   ),
//                 ),
//                 InkWell(onTap: () {
//                   Get.to(DressesScreen());
//                 },
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 18),
//                     child: Container(width: 280,height: 55,
//                       decoration: BoxDecoration(color:Colors.red.shade900 ,borderRadius: BorderRadius.circular(13)),
//                       child:
//                       Center(child: Text('Dresses',style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.w800),)),
//                     ),
//                   ),
//                 ),
//                 InkWell(onTap:() {
//                   Get.to(JewelleryScreen());
//                 } ,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 18),
//                     child: Container(width: 280,height: 55,
//                       decoration: BoxDecoration(color:Colors.red.shade900 ,borderRadius: BorderRadius.circular(13)),
//                       child:
//                       Center(child: Text('Jewellery',style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.w800),)),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//
//       //     ListView.builder(
//       //       shrinkWrap: true,
//       //      itemBuilder: (BuildContext context, int index)
//       // { return Column(
//       //   children: [
//       //   CheckScreenWidget(taskName: 'Foot Wear', taskCompleted: false,
//       //       onChanged: (value) {
//       //         CheckBoxChanged(value , index );
//       //       }
//       //
//       //             ),
//       //
//       // CheckScreenWidget(taskName: 'Dresses', taskCompleted: false,
//       //     onChanged: (value) {
//       //       CheckBoxChanged(value , index );
//       //     }
//       //
//       // ),
//       // CheckScreenWidget(taskName: 'Jewellery', taskCompleted: false,
//       //     onChanged: (value) {
//       //       CheckBoxChanged(value , index );
//       //     }
//       //
//       // ),
//       //
//       //   ],
//       // );
//       //
//       // }
//       //
//       //
//       //
//       //
//       //     ),
//           // Padding(
//           //   padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
//           //   child: Align(alignment: Alignment.bottomRight,
//           //       child: Container(
//           //         child: Center(child: Text('Visit',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),)),
//           //           width: 170,
//           //           height: 40,
//           //           decoration: BoxDecoration(
//           //               color: Colors.red.shade900,
//           //               borderRadius: BorderRadius.circular(13))),
//           //     ),
//           //   ),
//
//         ],
//       ),
//     );
//   }
// }
