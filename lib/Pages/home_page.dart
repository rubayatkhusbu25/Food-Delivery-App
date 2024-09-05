import 'package:flutter/material.dart';
import 'package:food_delivery_app/Widgets/best_foods.dart';
import 'package:food_delivery_app/Widgets/popular_foods.dart';
import 'package:food_delivery_app/Widgets/top_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFAFAFA),
        elevation: 0,
        title: Text("What do you like to eat?",
        style: TextStyle(
          color: Color(0xff3A3737),
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications_none, color: Color(0xff3A3737),))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10,top: 5,bottom: 5),
              child: Container(
                height: 55,
                child: TextFormField(

                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.redAccent,
                        //style: BorderStyle.none,
                      ),
                    ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    //filled: true,
                    prefixIcon: Icon(Icons.search,color: Colors.redAccent,),
                    suffixIcon: Icon(Icons.sort,color: Colors.redAccent,),
                    hintText: "What would you like to buy?"
                  ),
                ),
              ),
            ),

            // Top menu widgets
            TopMenus(),

            Container(
              padding: EdgeInsets.only(left: 10,bottom: 5,top: 5,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Foods", style: TextStyle(
                    color: Color(0xff3a3a3b),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("See all ", style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 16,
                     // fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),
            // popular foods
            PopularFoods(),

            Container(
              padding: EdgeInsets.only(left: 10,bottom: 5,top: 5,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Best Foods", style: TextStyle(
                      color: Color(0xff3a3a3b),
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  Text(" ", style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 16,
                    // fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),
            BestFoodList(),




          ],
        ),
      ),
    );
  }
}
