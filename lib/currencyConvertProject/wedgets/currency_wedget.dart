import 'package:first_project_ex/currencyConvertProject/ui/first_Home_Screen.dart';
import 'package:first_project_ex/currencyConvertProject/ui/second_Home_Screen.dart';
import 'package:first_project_ex/currencyConvertProject/wedgets/dropped_widget.dart';
import 'package:first_project_ex/provider/currency_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../currencyDef.dart';

class Currency extends StatefulWidget {
  
  @override
  _CurrencyState createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  

  @override
  Widget build(BuildContext context) {
    CurrencyProvider currencyProvider = 
    Provider.of<CurrencyProvider>(context);
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[

          Expanded( 
            child:Stack(
              children: <Widget>[
                //currencyProvider.valueDroppesd=='Currency' ?
                 FirstHomeScreen(),
                // : currencyProvider.valueDroppesd=='Time' ?
               //  FirstHomeScreen()
                 //: currencyProvider.valueDroppesd=='Length' ?
               //  FirstHomeScreen()
                // :null ,
//-------------/--------DropDown ----------------------------
                DroppedWidget(),


              ],
            ) 
            
            ),

          
          Expanded(child: SecondHomeScreen()),
          

      ],),
    );
  }
}
