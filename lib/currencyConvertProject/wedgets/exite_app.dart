import 'package:flutter/material.dart';

class ExitApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Color(0xFFFCAA2F),
            borderRadius: BorderRadius.all(Radius.circular(100)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey[800],
                offset: Offset(1.0, 3.0)
              )
            ]


          ),
          child: IconButton(icon:Icon(Icons.exit_to_app , size: 100, color: Colors.white,) ,
          onPressed: (){
            Navigator.of(context).pop();
            

          },
          ),
        
          )
      ),
    );
  }
}