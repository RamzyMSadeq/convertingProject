import 'dart:async';

import 'package:first_project_ex/currencyConvertProject/ui/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTime();
  }
  startTime()async{
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }
  route(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context)=>HomePage()));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[600],
      
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            //stops: [0.5,1.0],
            end: Alignment.bottomLeft,
            colors: [Color(0xFF1F9F84) , Color(0xFF66E093)])
        ),
              child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
                Container(
                 width: 300,
                 height: 300,
                 
                  child:Image.asset("images/logo.png")
                ),
             
              
              Padding(padding: EdgeInsets.only(top: 20.0)),
              Text(
                "CONVERTINGS",
                style: GoogleFonts.notable(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),
                
              ),
              Text(
                "APP",
                style: GoogleFonts.notable(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),
                
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 1,
             )
            ],
          ),

        ),
      ),
      
    );
  }
}