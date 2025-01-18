import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:tutorialproj/provider/favorite-provider.dart';

import 'cart_detail.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList= provider.favorites;
    return Scaffold(backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.red.shade900,
        title:Text('Favorite Item',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold,),),
        actions: [IconButton(onPressed: () {
          Get.to(CartDetail());
        }, icon: Icon(Icons.add_shopping_cart,color:Colors.white,))],),
      body: Column(
        children: [
          //Text('Favorite Item',style: TextStyle(fontSize: 20,color: Colors.red.shade900,fontWeight: FontWeight.bold),
          //),
          Expanded(
            child: ListView.builder(
              itemCount: finalList.length,
                itemBuilder: (context, index) {
                  return
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Slidable(endActionPane: ActionPane(motion: const ScrollMotion(),
                          children: [SlidableAction(onPressed: (context) {
                            finalList.removeAt(index);
                            setState(() {

                            });

                          },
                            backgroundColor: Colors.red.shade900,
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),],),
                        child: ListTile(tileColor: Colors.white,
                        title: Text(finalList[index].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),
                        subtitle: Text(finalList[index].detail,overflow: TextOverflow.ellipsis,),
                        leading: CircleAvatar(radius: 30,
                        backgroundImage: AssetImage(finalList[index].image),
                        backgroundColor: Colors.red.shade900,),
                        trailing: Text('\$' '${finalList[index].price}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                                          ),
                      ),
                    );
                }),
          )

        ],
      ),
    );
  }
}
