import 'package:flutter/material.dart';
import 'package:food_delivery_app/Widgets/cart_items.dart';

class FoodOrderPage extends StatelessWidget {
  const FoodOrderPage({super.key});

  @override
  Widget build(BuildContext context) {

    int counter=3;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFAFAFA),
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios,
          color: Color(0xff3a3737),),
        ),
        title: Text("Item Carts", style: TextStyle(
          color: Color(0xff3a3737),
          fontWeight: FontWeight.w600,
            fontSize: 20,
        ),
        textAlign: TextAlign.center,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.shopping_bag_outlined, color: Colors.black,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Text("Your Food Cart",
                style: TextStyle(
                  color: Color(0xff3a3a3b),
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),),
              ),
              SizedBox(height: 5,),
              CartItem(name: "Mixed Olivea", price: "\$96", image: "p_pancake.jpeg", quantity: "2"),
              CartItem(name: "Cheese Pizza", price: "\$200", image: "p_pizza.png", quantity: "2"),

              SizedBox(height: 5,),

              SafeArea(child: Container(
                padding: EdgeInsets.only(left: 3,right: 3),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffFae3e2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0,1)
                    )
                  ],

                ),
                child: TextFormField(

                  cursorColor: Colors.redAccent.withOpacity(.7),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffe6e1e1),
                        width: 1,
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffe6e1e1),
                          width: 1,
                        ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    fillColor: Colors.white,
                    hintText: "Add Your Promo Code",
                    filled: true,
                    suffixIcon: Icon(Icons.local_offer, color: Color(0xffFd2c2c),)


                  ),
                ),
              )),
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffFae3e2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0,1)

                    )
                  ],
                ),
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 25,right: 30,top: 10,bottom: 10,),
                    child: Column(
                      children: [
                        SizedBox(height: 6,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mixed Olivea",style: TextStyle(
                              color: Color(0xff3a3a3b),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left,),
                            SizedBox(width: 15,),
                            Text("\$250",style: TextStyle(
                              color: Color(0xff3a3a3b),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pan Cakes",style: TextStyle(
                              color: Color(0xff3a3a3b),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                              textAlign: TextAlign.left,),
                            SizedBox(width: 15,),
                            Text("\$300",style: TextStyle(
                              color: Color(0xff3a3a3b),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),),
                          ],
                        ),
                        Divider(color: Color(0xff3a3a3b),),

                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total",style: TextStyle(
                              color: Color(0xff3a3a3b),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                              textAlign: TextAlign.left,),
                            SizedBox(width: 15,),
                            Text("\$550",style: TextStyle(
                              color: Color(0xff3a3a3b),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),),
                          ],
                        ),



                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 8),
                child: Text("Payment Method", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff3a3a3b),
                ),),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffFae3e2).withOpacity(0.6),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0,1)

                    )
                  ],
                  

                ),
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 10,top: 10,bottom: 10,right: 30),
                    child: Row(
                      children: [
                        Image.asset("images/credit.png",width: 50,height: 50,),
                        SizedBox(width: 10,),
                        Text("Credit/Debit Card",style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff3a3a3b),
                          fontWeight: FontWeight.w500
                        ),),
                        
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: InkWell(
                  onTap: (){

                  },
                  child: Container(
                      height:50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffFd2c2c),
                      borderRadius: BorderRadius.circular(10)
                    ),

                    child: Center(child: Text("Order Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white), ))),

                ),
              )

            ],
          ),
        ),
      ),


    );
  }
}
