import 'package:first_project_ex/provider/currency_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CupertinoSelect extends StatefulWidget {
  final Function myFun;
  CupertinoSelect(this.myFun);

  get myList => null;

 

  @override
  _CupertinoSelectState createState() => _CupertinoSelectState();
}

class _CupertinoSelectState extends State<CupertinoSelect> {
 
 

  @override
  Widget build(BuildContext context) {
    CurrencyProvider currencyProvider = 
    Provider.of<CurrencyProvider>(context);
   // List myList = getListName();
    return  CupertinoPicker(
        
        itemExtent: 50,
        //diameterRatio: 20/20,
        //looping: true,
        //squeeze: 1,

        
        //backgroundColor: Colors.blueAccent,
        
         onSelectedItemChanged: (value){
           if(currencyProvider.valueDroppesd == 'Currency'){
             
           widget.myFun(valueCurrency.keys.toList()[value]);
          
           }else if(currencyProvider.valueDroppesd == 'Time'){
             widget.myFun(valueTime.keys.toList()[value]);
           }else if(currencyProvider.valueDroppesd == 'Length'){
             widget.myFun(valueLength.keys.toList()[value]);
           }
           
           
         },
          children: currencyProvider.valueDroppesd == 'Currency' ?
                                valueCurrency.keys.map((e) => Text(e)).toList()
                                : currencyProvider.valueDroppesd == 'Time' ?
                                valueTime.keys.map((e) => Text(e)).toList()
                                : currencyProvider.valueDroppesd == 'Length' ?
                                valueLength.keys.map((e) => Text(e)).toList()
                                : null
                                
           
           
          
        
    );
  }
}


