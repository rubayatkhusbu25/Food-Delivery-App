import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  String name;
  String price;
  String image;
  String quantity;

  CartItem({required this.name, required this.price, required this.image, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffFae3e2).withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0,1)

          )
        ]
      ),
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),

        ),
        child: Container(
          padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
          alignment:Alignment.center ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset("images/$image",width: 110,height: 100,),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              name,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff3a3b3b),
                                fontWeight: FontWeight.bold,

                            ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 5,),

                          Container(
                            child: Text(
                              price,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff3a3b3b),
                                fontWeight: FontWeight.w500,

                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),


                        ],
                      ),
                      SizedBox(width: 50,),


                      Container(

                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.delete, color: Colors.grey.withOpacity(0.9),),
                        ), // image
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.remove,),
                          ),
                          Container(
                            width: 30,
                              height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xffFd2c2c),
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(5),

                            ),
                            child: Center(
                                child: Text("3",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300
                                ),)),
                          ),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.add,
                                color: Color(0xffFd2c2c),),)


                        ],
                      ),
                    ),
                  )
                ],
              )

            ],
          ),
        ),

      ),
    );
  }
}
