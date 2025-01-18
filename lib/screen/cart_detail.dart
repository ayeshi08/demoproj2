import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../provider/cart-provider.dart';
import '../provider/favorite-provider.dart';

class CartDetail extends StatefulWidget {
  const CartDetail({super.key});

  @override
  State<CartDetail> createState() => _CartDetailState();
}

class _CartDetailState extends State<CartDetail> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final _provider = CartProvider.of(context);
    final finalList = provider.favorites;
    _buildProductQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add
                ? _provider.incrementQuantity(index)
                : _provider.decrementQuantity(index);
          });
        },
        child: Container(
          decoration:
              BoxDecoration(color: Colors.red.shade900, shape: BoxShape.circle),
          child: Icon(icon),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Text('My Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: finalList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Slidable(
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {
                              finalList.removeAt(index);
                              setState(() {});
                            },
                            backgroundColor: Colors.red.shade900,
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: Slidable(
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {
                                finalList[index].quantity = 1;
                                finalList.removeAt(index);
                                setState(() {});
                              },
                              backgroundColor: Colors.red.shade900,
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Delete',
                            ),
                          ],
                        ),
                        child:
                        ListTile(
                            tileColor: Colors.white,
                            title: Text(finalList[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),

                            subtitle:
                            Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: Text(
                                finalList[index].detail,style: TextStyle(fontSize: 16),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            leading: CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage(finalList[index].image),
                              backgroundColor: Colors.red.shade900,
                            ),
                            trailing: SingleChildScrollView(
                              child: Column(
                                children: [
                                  _buildProductQuantity(Icons.add, index),
                                  Text(
                                    finalList[index].quantity.toString(),
                                    style: TextStyle(
                                        fontSize: 7,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  _buildProductQuantity(Icons.remove, index),
                                ],
                              ),
                            )
                            //Text('\$' '${finalList[index].price}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            ),
                      ),
                    ),
                  );
                }),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Row(
              children: [
                Text('\$${_provider.getTotalPrice()}')
              ],
            ),
          )
        ],
      ),
    );
  }
}
