import 'package:first_project_ex/provider/currency_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DroppedWidget extends StatefulWidget {

  @override
  _DroppedWidgetState createState() => _DroppedWidgetState();
}

class _DroppedWidgetState extends State<DroppedWidget> {

  String dropdownValue = "Currency";
  List<String> items = ['Currency', 'Time', 'Length'];

  @override
  Widget build(BuildContext context) {
    CurrencyProvider currencyProvider = 
    Provider.of<CurrencyProvider>(context);
    return  Container(
                alignment: Alignment.center,

                margin: EdgeInsets.only(top: 18 , left: 110),
                width: 180,
                 height: 80,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(20)
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(1.0, 3.0),
                        blurRadius: 10
                      )

                    ],
                  ),
                  child: DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 30,
      elevation: 16,
      style: TextStyle(
        color: Colors.grey[800] , 
        fontWeight: FontWeight.w700 ,
        fontSize: 18
        ),
      
      onChanged: (String newValue) {
        //setState(() {
          //setTextFeildChang("0");

          dropdownValue = newValue;
         
          
          if(newValue == "Currency"){
           currencyProvider.setValueDropped("Currency");
           currencyProvider.result='0';

          }else if (newValue == "Time") {
           currencyProvider.setValueDropped("Time");
           currencyProvider.result='0';

          }else if(newValue == "Length"){
            
            //changDrop(2);
            currencyProvider.setValueDropped("Length");
            currencyProvider.result='0';
          }
          

        //});
      },
      items: 
          items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
  
    ),
                  
                  );
  }
}