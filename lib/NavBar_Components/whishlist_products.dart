
import 'package:dapp/NavBar_Components/wishList_ListView.dart';
import 'package:flutter/material.dart';

import '../constraints.dart';
import '../constraints.dart';
import '../constraints.dart';
import '../models/product.dart';

class MyWishlist extends StatefulWidget {
  @override
  _MyWishlistState createState() => _MyWishlistState();
}

class _MyWishlistState extends State<MyWishlist> {
  List<Product> products = [
    Product(
        'assets/car/1.jpg',
        'Boat roackerz',
        'description',
        450000),
    Product(
        'assets/images/b.jpg',
        'Boat roackerz',
        'description',
        450000),
    Product(
        'assets/images/c.jpg',
        'Boat roackerz',
        'description',
        500000)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(

                  boxShadow: [
                    BoxShadow(color:PrimaryColor.withOpacity(0.2),
                        blurRadius: 6.0,
                        offset: Offset(0.0, 0.75))
                  ],
                  color: Colors.white
                ),
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    IconButton(icon:Icon(Icons.arrow_back,color: Colors.black,),
                        onPressed:(){
                          Navigator.pop(context);
                        }),
                    SizedBox(width: 10,),
                    Text("My Wishlist",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
                  ],

                ),
              ),
            ),
            
           Expanded(
             child: ListView.builder(
               itemCount: products.length,
               itemBuilder: (context, index) => WishListView(products[index],onRemove: (){

                setState(() {
                  products.remove(products[index]);
                });
               },)),
           )


        ],
      ),



        ),

    );
  }
}



