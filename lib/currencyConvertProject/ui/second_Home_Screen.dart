import 'package:first_project_ex/provider/currency_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SecondHomeScreen extends StatefulWidget {
  @override
  _SecondHomeScreen createState() => _SecondHomeScreen();
}

class _SecondHomeScreen extends State<SecondHomeScreen> {
 // String result = "1";
  
  

  @override
  Widget build(BuildContext context) {
    CurrencyProvider currencyProvider = Provider.of<CurrencyProvider>(context);
    return Container(
      margin: EdgeInsets.only(top: 50 , left: 20 , right: 20 , bottom: 100),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/4,
      //color: Colors.blue,
      decoration: BoxDecoration(
    color: Colors.orangeAccent[100],
    

    boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(1.0, 3.0),
                  blurRadius: 5.0,
                ),
              ],
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(30)
    ),

    ),
    child: Center(
      child: Text(currencyProvider.result , style: TextStyle(
      fontSize: 30 ,
      fontWeight: FontWeight.bold,
      color: Colors.grey[800],
    ),
    ),),
    
    );
  }
}

