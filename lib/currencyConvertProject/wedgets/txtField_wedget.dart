import 'package:first_project_ex/provider/currency_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextFieldWedget extends StatefulWidget {

  @override
  _TextFieldWedgetState createState() => _TextFieldWedgetState();
}

class _TextFieldWedgetState extends State<TextFieldWedget> {


  @override
  Widget build(BuildContext context) {
    CurrencyProvider currencyProvider = 
    Provider.of<CurrencyProvider>(context);
    return TextField(
      
      textAlign: TextAlign.center,
      cursorColor: Colors.white,
      onChanged:(value){
        value !=''?
         // print(value);
        currencyProvider.setValue(value)
        :
        currencyProvider.setValue('0');

        
        
        
        
      } ,
      keyboardType:TextInputType.number ,
      decoration:InputDecoration(
        fillColor: Colors.white.withOpacity(0.7),
        filled: true,
        
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      
      ),
    );
  }
}


class TextFieldWedgetTime extends StatefulWidget {
  final Function changed;
  TextFieldWedgetTime(this.changed);
  @override
  _TextFieldWedgetStateTime createState() => _TextFieldWedgetStateTime();
}

class _TextFieldWedgetStateTime extends State<TextFieldWedgetTime> {
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      cursorColor: Colors.white,

      onChanged:(value){
        print(value);
        value!="" ?
        setState(() {
          widget.changed(value);
        })
        :
        setState(() {
          widget.changed("0");
        });

        
      } ,
      keyboardType:TextInputType.number ,
      decoration:InputDecoration(
        fillColor: Colors.white,
        filled: true,
        //enabledBorder: InputBorder.none,
        //fillColor: Colors.white,
        //focusColor: Colors.white,
        border: OutlineInputBorder(
        ),
      
      ),
    );
  }
}