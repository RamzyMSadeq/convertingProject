
double finalResult = 1.0 ;
List<String> currencyList = ["USD" , "EUR" , "ILS" , "EGP"];
List<String> timeList = ["SECOND" , "MINUTE" , "HOUR"];
List<String> lengthList = [ "meters" ,"millimeters" , "centimeters" , "inches" , "feet" , "yards"  , "kilometers" , "miles"];

Map<String , double> valueCurrency = {
  "USD" : 3.5 ,
  "EUR" : 3.8,
  "ILS" : 1.0,
  "EGP" : 0.25,
};
Map<String , double> valueTime = {
  "SECOND" : 1 ,
  "MINUTE" : 60,
  "HOUR" : 3600,
};
Map<String , double> valueLength = {
  "meters" : 1 ,
  "millimeters" : .001,
  "centimeters" : .01,
  "inches" : .0254 ,
  "feet" : .304,
  "yards" : .917,
  "kilometers" : 1000,
  "miles" : 1.610,
};