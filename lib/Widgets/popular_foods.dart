import 'package:flutter/material.dart';
import 'package:food_delivery_app/Animations/scale_route.dart';
import 'package:food_delivery_app/Pages/food_details_page.dart';
import 'package:food_delivery_app/Pages/food_order_page.dart';

class PopularFoods extends StatefulWidget {
  const PopularFoods({super.key});

  @override
  State<PopularFoods> createState() => _PopularFoodsState();
}

class _PopularFoodsState extends State<PopularFoods> {
  @override
  Widget build(BuildContext context) {

    // this is the scrolling part height of popular menu

    return Container(
      //color: Colors.green,
      // width: 190,
      height: 220, // Set a specific height
      child: const PopularFoodItems(),
    );
  }
}

class PopularFoodTiles extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String rating;
  final String price;
  final String slug;

  PopularFoodTiles({
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.price,
    required this.slug,
  });

  @override
  Widget build(BuildContext context) {

    //each item of the menu is an inkwell

    return InkWell(
      onTap: () {
         Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            child: Card(    // each item is wraped with card
              color: Colors.white,
              elevation: .5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(  // the full area je tar moddhe design hobe

                width: 180,
                height: 210,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [

                        // top right icon: heart

                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5.0, left: 0),
                              child: Container(
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white70,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0.00, 0.75),
                                      color: Color(0xfffae3e2),
                                      blurRadius: 25,
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // image item

                        Align(
                          alignment: Alignment.topLeft,
                          child: Center(
                            child: Image.asset(
                              "images/$imageUrl",
                              height: 140,
                              width: 120,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // item name

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(left: 15, top: 5),
                          child: Text(
                            name,
                            style: TextStyle(
                              color: Color(0xff6e6e71),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        // bottom right icon: near me

                        Container(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5, left: 0),
                            child: Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0.00, 0.75),
                                    color: Color(0xfffae3e2),
                                    blurRadius: 25,
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.near_me,
                                color: Colors.redAccent,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // item price

                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(top: 5, left: 15, right: 5),
                      child: Text(
                        price,
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PopularFoodItems extends StatelessWidget {
  const PopularFoodItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        PopularFoodTiles(
          name: "Fried Rice",
          imageUrl: "p_friedR.png",
          rating: "4.9",
          price: "280.00",
          slug: "fried_chicken",
        ),
        PopularFoodTiles(
          name: "Cheese Pizaa",
          imageUrl:"p_pizza.png",
          rating: "4.9",
          price: "500.00",
          slug: "fried_egg",
        ),
        PopularFoodTiles(
          name: "Pan Cakes",
          imageUrl: "p_pancake.jpeg",
          rating: "4.9",
          price: "350.00",
          slug: "fried_egg",
        ),
        PopularFoodTiles(
          name: "Chicken Fries",
          imageUrl: "p_cF.png",
          rating: "4.9",
          price: "200.00",
          slug: "fried_egg",
        ),
        PopularFoodTiles(
          name: "Hot Pasta",
          imageUrl: "p_pasta.png",
          rating: "4.9",
          price: "380.00",
          slug: "fried_egg",
        ),
        PopularFoodTiles(
          name: "Sassy Noodles ",
          imageUrl: "p_hotP.png",
          rating: "4.9",
          price: "350.00",
          slug: "fried_egg",
        ),
        // Additional PopularFoodTiles widgets can be added here
      ],
    );
  }
}
