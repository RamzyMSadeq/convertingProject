import 'package:first_project_ex/currencyDef.dart';
import 'package:flutter/material.dart';

class CurrencyProvider extends ChangeNotifier{
   String fromCurrency = 'USD';
   String toCurrency='USD';
   double numberText =0.0;
   String result = "0";

   String fromTime = 'SECOND';
  String toTime='SECOND';
  double numberTextTime =0.0;

  String fromLength = 'meters';
  String toLength='meters';
  double numberTextLength =0.0;

  String valueDroppesd = 'Currency';

  String textAdd1 ;
  double textAdd2;

  setTextAdd1(String value){
    
    this.textAdd1 = value;
    notifyListeners();
    print(textAdd1);
  }
  setTextAdd2(double value){
    this.textAdd2 = value;
    notifyListeners();
    print(textAdd2);
  }
  addToMap(String key , double value){
    valueCurrency.addAll({key : value});
    notifyListeners();
    print(valueCurrency);

  }

  setValueDropped(String newValue){

    this.valueDroppesd = newValue;
    notifyListeners();
    print(valueDroppesd);
  }

  setFromCurrency(String value) {
    if(valueDroppesd=='Currency'){
       this.fromCurrency = value;
    }else if(valueDroppesd=='Time'){
      this.fromTime = value;
    }else if(valueDroppesd=='Length'){
      this.fromLength = value;
    }
    calculate();
  }
   setToCurrency(String value) {
       if(valueDroppesd=='Currency'){
       this.toCurrency = value;
    }else if(valueDroppesd=='Time'){
      this.toTime = value;
    }else if(valueDroppesd=='Length'){
      this.toLength = value;
    }
    calculate();
  }
  setValue(String myValue) {
    if(valueDroppesd=='Currency'){
       this.numberText = double.parse(myValue);
    }else if(valueDroppesd=='Time'){
      this.numberTextTime = double.parse(myValue);
    }else if(valueDroppesd=='Length'){
      this.numberTextLength = double.parse(myValue);
    }
   
    calculate();
  }

  calculate() {
    if(valueDroppesd=='Currency'){
      this.result =
        '${valueCurrency[fromCurrency] / valueCurrency[toCurrency] * numberText}';

    }else if(valueDroppesd=='Time'){
      this.result =
        '${valueTime[fromTime] / valueTime[toTime] * numberTextTime}';

    }else if(valueDroppesd=='Length'){
      this.result =
        '${valueLength[fromLength] / valueLength[toLength] * numberTextLength}';

    }
    notifyListeners();
    print(result);
  }

}

  Map<String , double> valueCurrency = {
  "USD" : 3.5 ,
  "EUR" : 3.8,
  "ILS" : 1.0,
  "EGP" : 0.25,
};
const Map<String , double> valueTime = {
  "SECOND" : 1 ,
  "MINUTE" : 60,
  "HOUR" : 3600,
};
const Map<String , double> valueLength = {
  "m" : 1 ,
  "mm" : .001,
  "cm" : .01,
  "inches" : .0254 ,
  "feet" : .304,
  "yards" : .917,
  "km" : 1000,
  "miles" : 1.610,
};
