import 'package:dapp/models/Category_model.dart';
import 'package:flutter/material.dart';

import '../constraints.dart';


class CategoryScreen extends StatefulWidget {


  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}


class _CategoryScreenState extends State<CategoryScreen> {
  int _selectedCat=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Categories",style: TextStyle(
          color: Colors.black,
          fontSize: 20
        ),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black,), onPressed: (){
          Navigator.pop(context);
        }),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 50,
                    margin: const EdgeInsets.only(right: 15),
                    child: ListView.builder(
                        itemCount: categories.length,
                        itemBuilder:(context, index) {
                          return GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _selectedCat=index;
                                  });

                                },
                            child: Container(
                            margin: const EdgeInsets.only(bottom: 25.0),
                          // padding: const EdgeInsets.symmetric(vertical: 45.0),
                          width: 50,
                          constraints: BoxConstraints(minHeight: 101),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                          border: _selectedCat == index ? Border.all(color: PrimaryColor.withOpacity(0.80)) : Border(),
                          color: _selectedCat == index
                          ? Colors.transparent
                              : PrimaryColor.withOpacity(0.80),
                          borderRadius: BorderRadius.circular(9.0),
                          ),
                              child: RotatedBox(
                                quarterTurns: -1,
                                child: Text(
                                  "${categories[index].title}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      .copyWith(
                                      color: _selectedCat == index
                                          ? Colors.black
                                          : Colors.white),
                                ),
                              ),

                            )
                          );

                        },),
                  ),
                  Expanded(
                    flex: 4,
                    child: ListView.builder(
                      itemCount: categories[_selectedCat].subCat.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 15),
                          padding: const EdgeInsets.all(9.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                    "${categories[_selectedCat].subCat[index].title}"),
                              ),
                              Icon(Icons.chevron_right),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),



          ],
        ),
      ) ,
    );
  }
}
