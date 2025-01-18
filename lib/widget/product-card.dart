import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorialproj/provider/favorite-provider.dart';

import '../model/product-model.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return  Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
      
      width: 300,  // Set the width of the Card
      height: 200,
      child: Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: GestureDetector(onTap: () {
                provider.toggleFavorite(widget.product);
              },
                  child: Icon(provider.isExist(widget.product)?Icons.favorite:
                  Icons.favorite_border_outlined,color: Colors.red.shade900,)),
            ),

          ],
        ),
        SizedBox(
          height:70 ,
          width: 110,
          child: Image.asset(widget.product.image,fit: BoxFit.cover,),

        ),
        SizedBox(height: 3,),
        Text(widget.product.name,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
        Text(widget.product.description,style: TextStyle(color: Colors.red.shade900,fontWeight: FontWeight.bold),),
        Text('\$' '${widget.product.price}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

      ],
            ),
    );
  }
}
