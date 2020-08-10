import 'package:first_project_ex/provider/currency_Provider.dart';
import 'package:flutter/material.dart';
import 'currencyConvertProject/ui/splash_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CurrencyProvider>(
      create: (context)=>CurrencyProvider(),
          child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:SplashScreen()
      ),
    );
  }
}

