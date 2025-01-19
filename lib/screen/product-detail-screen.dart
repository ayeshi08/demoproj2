

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorialproj/provider/cart-provider.dart';

import '../model/product-model.dart';
import 'cart_detail.dart';



class DetailScreen extends StatefulWidget {
  final Product product;
  DetailScreen({super.key, required this.product,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final provider =Provider.of<CartProvider>(context);
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,

      ),
      body:
      SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 200,width:200 ,
            child:   Image(height: 50,
              width: 50,

              image: AssetImage(
                widget.product.image,
              ),
              //fit: BoxFit.cover,
            ),

          ),

          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,height: 400,

            child: Center(
              child: Column(
                children: [

                  Row(mainAxisAlignment:MainAxisAlignment.spaceBetween ,

                    children: [
                      Text( widget.product.name.toUpperCase(),style: TextStyle(fontSize: 26,fontFamily: 'Gilroy-Black',fontWeight: FontWeight.bold,color: Colors.red.shade900),),
                    Text( '\$' '${widget.product.price}',style: TextStyle(fontSize: 20,),),

                    ],
                  ),


                  Align(alignment:Alignment.topLeft,child: Text( 'Product Detail',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red.shade900)),),
                 SizedBox(height: 5,),
                  Expanded(child: SizedBox(child: Text(widget.product.detail,textAlign: TextAlign.justify,  ))),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 38.0),
                  //   child: Container(
                  //     child:
                  //
                  //     Padding(
                  //       padding: const EdgeInsets.only(left: 38.0),
                  //       child: Center(child:
                  //       GestureDetector(onTap: () {
                  //         provider.toggleProduct(widget.product);
                  //         Get.to(CartDetail());
                  //       },
                  //           child: Text('Add to Basket',style: TextStyle(fontSize: 18,fontFamily: 'Gilroy-Black',color: Colors.white),))),
                  //     ),
                  //
                  //     width:260,height:60,
                  //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all( color: Colors.red.shade900),
                  //       color: Colors.red.shade900,),
                  //   ),
                  // )
                ],),
            ),
          ),


        ],
        ),
      ),
      bottomSheet: BottomAppBar(

        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height/10,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.red.shade900,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7), topRight: Radius.circular(7))),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$''${widget.product.price}',style: TextStyle(color: Colors.white,fontSize: 26),),

              ElevatedButton.icon(onPressed: () {

                provider.toggleProduct(widget.product);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CartDetail()));
              },
icon: Icon(Icons.send),
        label:  Text('Add to Cart'))
            ],
          ), ),
      ),
    );
  }
}
