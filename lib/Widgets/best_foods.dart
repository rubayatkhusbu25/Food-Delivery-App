import 'package:flutter/material.dart';
import 'package:food_delivery_app/Animations/scale_route.dart';
import 'package:food_delivery_app/Pages/food_details_page.dart';

class BestFoods extends StatelessWidget {
  const BestFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BestFoodTiles extends StatelessWidget {

  final String name;
  final String imageUrl;
  final String rating;
  final String numberOfRating;
  final String price;
  final String slug;

  BestFoodTiles({
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.numberOfRating,
    required this.price,
    required this.slug,
  });


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, ScaleRoute(page: FoodDetailsPage()));

      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10,right: 5,top: 5,bottom: 5),
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 1,
              margin: EdgeInsets.all(5),
              child: Image.asset("images/$imageUrl",width: double.infinity,fit: BoxFit.fill,),
            ),
          )
        ],
      ),
    );
  }
}

class BestFoodList extends StatelessWidget {
  const BestFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BestFoodTiles(name: "Pizza", imageUrl: "dish0.jpg", rating: "4.0", numberOfRating: "5K", price: "500", slug: "slug"),
        BestFoodTiles(name: "Pizza", imageUrl: "dish6.jpeg", rating: "4.0", numberOfRating: "5K", price: "500", slug: "slug"),
        BestFoodTiles(name: "Pizza", imageUrl: "dish1.jpg", rating: "4.0", numberOfRating: "5K", price: "500", slug: "slug"),
        BestFoodTiles(name: "Pizza", imageUrl: "dish3.jpeg", rating: "4.0", numberOfRating: "5K", price: "500", slug: "slug"),
        BestFoodTiles(name: "Pizza", imageUrl: "dish4.jpg", rating: "4.0", numberOfRating: "5K", price: "500", slug: "slug"),
        BestFoodTiles(name: "Pizza", imageUrl: "dish5.jpg", rating: "4.0", numberOfRating: "5K", price: "500", slug: "slug"),
        BestFoodTiles(name: "Pizza", imageUrl: "dish2.jpg", rating: "4.0", numberOfRating: "5K", price: "500", slug: "slug")

      ],
    );
  }
}



