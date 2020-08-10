import 'package:first_project_ex/provider/currency_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ShowWidget extends StatelessWidget {
  BuildContext context1;
  ShowWidget(this.context1);
  @override
  Widget build(BuildContext context) {

    CurrencyProvider currencyProvider = Provider.of<CurrencyProvider>(context);
   
                
  return Container(
    child:  Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Add Currency" , textAlign: TextAlign.center, style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                    ),),
                    SizedBox(height: 30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(child: Text("currency Name" , style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16

                        ),)),
                        Expanded(
                        child: Container(
                          height: 45,
                          //width: ,
                                child: TextField(
                                  onChanged: (value){
                                       currencyProvider.setTextAdd1(value);
                                  },
                                  textAlign: TextAlign.center,
                            
                      decoration: InputDecoration(
                          
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black45)
                              )
                              //hintText: 'currency name'
                              ),
                    ),
                        ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(child: Text("currency Value" , style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16

                        ),)),
                        Expanded(
                        child: Container(
                          height: 45,
                          //width: ,
                                child: TextField(
                                  onChanged: (value){
                                    currencyProvider.setTextAdd2(double.parse(value));
                      

                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                            
                      decoration: InputDecoration(
                        
                          
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black45)
                              )
                              //hintText: 'currency name'
                              ),
                    ),
                        ),
                        ),
                      ],
                    ),

                   

                    SizedBox(
                      height: 50,
                       
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          
                        onPressed: () {
                          currencyProvider.addToMap(
                            currencyProvider.textAdd1,
                            currencyProvider.textAdd2
                             );
                             Navigator.of(context).pop();
                             Scaffold.of(context1).showSnackBar(
                            SnackBar(content: Text("The Currency is added Completely") ,
                            backgroundColor: Colors.green,
                            
                            )
                          );
                
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: const Color(0xFF1F9F84),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Colse",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: const Color(0xFFFCAA2F),
                      ),

                      ],
                    )
                  ],
                ),
              ),
            ),
          )
         
  );
  }
}