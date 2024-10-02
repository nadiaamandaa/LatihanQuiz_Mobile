import 'package:flutter/material.dart';
import 'package:latihan_quiz/data/dummy_data.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Selamat datang, $username!",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: 
      GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: foodMenuList.map((menu) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(menu.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),    
                Text('${menu.category}',
                style: TextStyle(
                  fontStyle: FontStyle.italic
                ),),
                Image.asset(menu.imageAsset,
                width: 70,
                height: 70,),
                Text('${menu.description}',
                textAlign: TextAlign.center,),
                Text('Ingredients: ${menu.ingredients}',
                textAlign: TextAlign.justify,),
                Text('Cooking Time: ${menu.cookingTime}'),
                Text('${menu.price}',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}