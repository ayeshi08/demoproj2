import 'package:flutter/material.dart';

import '../provider/favorite-provider.dart';



class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList= provider.favorites;
    return Scaffold(
        appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.red.shade900,
        title:Text('Favorite Item',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold,),),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Picture Section
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/sale-tag.jpg'), // Use an image asset
            ),
            SizedBox(height: 16),
            // Username Section
            Text(
              'Welcome User',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            // Bio Section
            Text(
              'Welcome to our Fashion App where you can explore fashion according to your choice',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            // Action Buttons Section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {

                    // Handle edit action
                  },
                  child: Text('Edit Profile',style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade900),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {

                    // Handle logout action
                  },
                  child: Text('Logout',style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade900),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}