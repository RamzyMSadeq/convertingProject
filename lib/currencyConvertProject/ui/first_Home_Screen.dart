import 'package:first_project_ex/currencyConvertProject/wedgets/cupertinoSlect.dart';
import 'package:first_project_ex/currencyConvertProject/wedgets/txtField_wedget.dart';
import 'package:first_project_ex/provider/currency_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstHomeScreen extends StatefulWidget {
  
  @override
  _FirstHomeScreenState createState() => _FirstHomeScreenState();
}

class _FirstHomeScreenState extends State<FirstHomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    CurrencyProvider currencyProvider= Provider.of<CurrencyProvider>(context);
    
    return Container(
      margin: EdgeInsets.only(top: 50 , left: 20 , right: 20 ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/3,
      
      
      //color: Colors.blue,
      decoration: BoxDecoration(
        
    color: Color(0xFF1F9F84),
    boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(1.0, 3.0),
                  blurRadius: 10.0,
                ),
              ],
    borderRadius: BorderRadius.only(

      topLeft: Radius.circular(30),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
        
    ),

    ),
    child: Row(
      children: <Widget>[
        
        Expanded(child: CupertinoSelect(currencyProvider.setFromCurrency)),
        Expanded(child: TextFieldWedget()),
        Expanded(child: CupertinoSelect(currencyProvider.setToCurrency)),
        
      ],
    ),
    
    );
  }
}


