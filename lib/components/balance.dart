import 'package:dapp/Screens/payment/components/card/Add_new_card.dart';
import 'package:dapp/models/credit_card.dart';
import 'package:flutter/material.dart';
import 'package:mccounting_text/mccounting_text.dart';

import '../constraints.dart';


class Balance extends StatelessWidget {
  const Balance({
    Key key,
    @required int previousIndex,
    @required int currentIndex,
  })  : _previousIndex = previousIndex,
        _currentIndex = currentIndex,
        super(key: key);

  final int _previousIndex;
  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Balance",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Colors.green[800]),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(
                  "\₹",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.green[800]),
                ),
                McCountingText(
                  begin: cards[_previousIndex].amount,
                  end: cards[_currentIndex].amount,
                  precision: 2,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.green[800]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NewCard()));
                    },
                    child: Container(
                      height: 90,
                      width: 100,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 15),
                            blurRadius: 22,
                            color: PrimaryColor.withOpacity(0.22),
                          ),
                          BoxShadow(
                            offset: Offset(-15, -15),
                            blurRadius: 20,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Icon(Icons.credit_card_outlined,size: 30,color: PrimaryColor),
                          ),
                          Text("Add new Card",style: TextStyle(color: PrimaryColor),),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
