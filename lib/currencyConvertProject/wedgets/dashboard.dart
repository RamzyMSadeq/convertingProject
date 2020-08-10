import 'package:first_project_ex/currencyConvertProject/wedgets/showDialogWid.dart';
import 'package:first_project_ex/currencyDef.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> myWidgetList = [
    Icon(Icons.attach_money , size: 80, color: Color(0xFF1F9F84),),
    Icon(Icons.timer, size: 80, color: Color(0xFF1F9F84),),
    Icon(Icons.signal_cellular_connected_no_internet_4_bar, size: 80, color: Color(0xFF1F9F84),),
    Icon(Icons.swap_horizontal_circle, size: 80, color: Color(0xFF1F9F84),),
    Icon(Icons.settings, size: 80, color: Color(0xFF1F9F84),),
    Icon(Icons.exit_to_app, size: 80, color: Color(0xFF1F9F84),),
    

    ];
    List<String> myTitle = [
      "CURRENCY" ,
       "TIME" ,
        "LENGTH" ,
        "CONVERT",
        "SETTINGS" ,
        "EXIT"
        ];
        String valueText1 ="";
        String valueText2 ="";
        bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 10,),
        Text("Dashboard" , textAlign: TextAlign.center,style: GoogleFonts.notable(
          fontSize: 20,
          color: Colors.grey[800],
        )),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height:120,
              width: 180,
              decoration: BoxDecoration(
                color: Color(0xFF1F9F84),
                borderRadius: BorderRadius.all(Radius.circular(25)),
                
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15 , top: 20),
                    child: Text("number of active users" , style: TextStyle(
                      color: Colors.white ,
                      fontWeight: FontWeight.w700,
                      fontSize: 16
                      ),)),

                  Container(
                      padding: EdgeInsets.only(left: 100),
                     child: CircleAvatar(
                       backgroundColor: Colors.white,
                        
                      child: Text("50" , style: TextStyle(
                        color: Color(0xFF1F9F84) , fontWeight: FontWeight.w700,),),
                  ),
                    )

                ],
              ),
               ),

               Container(
              height:120,
              width: 180,
              decoration: BoxDecoration(
                color: Color(0xFFFCAA2F),
                borderRadius: BorderRadius.all(Radius.circular(25))
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15 , top: 20),
                    child: Text("number of active users" , style: TextStyle(
                      color: Colors.white ,
                      fontWeight: FontWeight.w700,
                      fontSize: 16
                      ),)),

                  Container(
                      padding: EdgeInsets.only(left: 100),
                     child: CircleAvatar(
                       backgroundColor: Colors.white,
                        
                      child: Text("20" , style: TextStyle(
                        color: Color(0xFFFCAA2F) , fontWeight: FontWeight.w700,),),
                  ),
                    )

                ],
              ),
              

              
               )
          ],
        ),
        SizedBox(height: 20,),

        Divider(),

        Container(
          height: 500,
          
          //color: Colors.red,
          child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
             itemBuilder: (BuildContext contex , index){
               return GestureDetector(
                 onTap: (){
                   print("ramzi is prissed");
                   if(index == 0){
                     return showDialog(
                     context: context,
                     builder: (BuildContext context) {
                     return ShowWidget(this.context);
          
        });
               
          }
                   //----------------------------- 

                   
  

                   //-------------------------------------- 
                   

                 },
                    child: Container(
                   margin: EdgeInsets.only(left: 10 , right: 10 , top: 10 ,bottom: 20),
          height: 200,
          width: 180,
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  blurRadius: 5 ,
                  color: Colors.grey,
                  offset: Offset(1.0, 3.0)
              ),
              
            ],
            
             ),
             child: Container(
                 margin: EdgeInsets.only(top: 20 ),
                     child: Column(
                   children: <Widget>[
                     myWidgetList[index],
                     SizedBox(height: 10,),

                     Text(myTitle[index] , style: TextStyle(
                       color: Colors.grey[800],
                       fontSize: 20,
                       fontWeight: FontWeight.w700

                     ),)
                   ],
                   
                 ),
                 
             ),
             //child: Text(index.toString()),
        ),
               );
             }
             )
        )
        

      ],

      
    );
  }
  
}
