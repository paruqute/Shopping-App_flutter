import 'package:flutter/material.dart';

import '../constraints.dart';
import '../models/product.dart';
class WishListView extends StatefulWidget {
  final Product product;
  final Function onRemove;
  WishListView(this.product, {Key key, this.onRemove}) : super(key: key);

  @override
  _WishListViewState createState() => _WishListViewState();
}

class _WishListViewState extends State<WishListView> {

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [

        Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color:PrimaryColor.withOpacity(0.05),
            borderRadius: BorderRadius.circular(20)
        ),
        height: 150,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(

                height: 120,
                width: 120,

                decoration: BoxDecoration(

                //     image:DecorationImage(
                //         image: Image.asset(Products[index].image)),
                //
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Image.asset(widget.product.image,fit: BoxFit.contain,),
              ),
              SizedBox(width: 10,),
              Container(

                child: Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,


                    children: [
                      Text(widget.product.name,
                      textAlign: TextAlign.right,
                        style: TextStyle(

                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                      SizedBox(height: 10,),
                      Text('\₹${widget.product.price}',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),),
                      SizedBox(height: 10,),
                      MaterialButton(
                          height: 30,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text("Move to Bag",
                            style: TextStyle(
                                fontSize: 13
                            ),),
                          onPressed:(){})
                    ],
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
        Positioned(
          top: 10,
            right: 10,
            child:  Container(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                backgroundColor: PrimaryColor.withOpacity(0.03),
                child: IconButton(
                    icon: Icon(Icons.close,color: Colors.red,), onPressed:
                widget.onRemove
                ),
              ),
            ))
    ]
    );


  }
}
