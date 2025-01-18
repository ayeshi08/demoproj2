import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorialproj/model/my-product-list-model.dart';
import 'package:tutorialproj/screen/product-detail-screen.dart';
import 'package:tutorialproj/widget/product-card.dart';

import 'cart_detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.red.shade900,
        title:Text('Our Product',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold,),),
        actions: [IconButton(onPressed: () {
          Get.to(CartDetail());
        }, icon: Icon(Icons.add_shopping_cart,color:Colors.white,))],),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProductCategoryWidget(index: 0, name: "Sneakers"),
                _buildProductCategoryWidget(index: 1, name: "Jackets"),
                _buildProductCategoryWidget(index: 2, name: "Watches"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: isSelected == 0
                  ? buildSneakersProduct()
                  : isSelected == 1
                      ? buildJacketsProduct()
                      : buildWatchesProduct())
        ],
      ),
    );
  }

  _buildProductCategoryWidget({required int index, required String name}) {
    return GestureDetector(
      onTap: () => setState(() => isSelected = index),
      child: Container(
        width: 100,
        height: 40,
        margin: EdgeInsets.only(top: 10, right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected == index
                ? Colors.red.shade900
                : Colors.red.shade300),
        child: Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  buildSneakersProduct() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      scrollDirection: Axis.vertical,
      itemCount: MyProduct.Sneakers.length,
      itemBuilder: (context, index) {
        final sneakersList = MyProduct.Sneakers[index];
        return GestureDetector(onTap: () {
          Get.to(DetailScreen(product: sneakersList,));
        },
            child: ProductCard(product: sneakersList));
      });}

  buildJacketsProduct() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      scrollDirection: Axis.vertical,
      itemCount: MyProduct.Jackets.length,
      itemBuilder: (context, index) {
        final Jackets = MyProduct.Jackets[index];
        return GestureDetector(onTap: () {
          Get.to(DetailScreen(product: Jackets));
        },
            child: ProductCard(product: Jackets));
      },
    );
  }

  buildWatchesProduct() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProduct.Watch.length,
        itemBuilder: (context, index) {
          final watch = MyProduct.Watch[index];
          return GestureDetector(onTap: () {
            Get.to(DetailScreen(product: watch));
          },
              child: ProductCard(product: watch));
        });
  }
}
