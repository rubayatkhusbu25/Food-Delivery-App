import 'package:flutter/material.dart';

class TopMenuTiles extends StatelessWidget {

  String name;
  String imageUrl;
  String slug;

   TopMenuTiles({ required this.name, required this.imageUrl, required this.slug});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0,0.75) ,
                  blurRadius: 25,
                  color:Color(0xffFae3e2) ,
                ),
              ]

            ),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                width: 50,
                height: 50,
                child: Center(child: Image.asset('images/' + imageUrl +'.png', width: 45, height: 45,)),
              ),
            ),
          ),
          Text(name,
            style: TextStyle(
            fontSize: 14,
            color: Color(0xff6e6e71)
          ),),
        ],
      ),
    );
  }
}

class TopMenus extends StatelessWidget{
  const TopMenus({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TopMenuTiles(name: "Burger", imageUrl: "ic_burger", slug: ""),
          TopMenuTiles(name: "Cake", imageUrl: "ic_cake", slug: ""),
          TopMenuTiles(name: "Soft Drinks", imageUrl: "ic_softdrink", slug: ""),
          TopMenuTiles(name: "Pizza", imageUrl: "ic_pizza", slug: ""),
          TopMenuTiles(name: "Sushi", imageUrl: "ic_susi", slug: ""),
          TopMenuTiles(name: "Ice Cream", imageUrl: "ic_icecream", slug: ""),
          TopMenuTiles(name: "Fry", imageUrl: "ic_fries", slug: ""),
          TopMenuTiles(name: "Fried rice", imageUrl: "p_friedR", slug: ""),
          TopMenuTiles(name: "Pasta", imageUrl: "p_hotP", slug: ""),
          TopMenuTiles(name: "Pizza", imageUrl: "p_pizza", slug: "")


        ],
      ),
    );
  }
}
