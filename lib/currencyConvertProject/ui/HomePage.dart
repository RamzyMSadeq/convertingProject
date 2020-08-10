

import 'package:first_project_ex/currencyConvertProject/wedgets/exite_app.dart';
import 'package:first_project_ex/currencyConvertProject/wedgets/currency_wedget.dart';
import 'package:first_project_ex/currencyConvertProject/wedgets/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  
 //// End Method to Time-------------------------------------------------
  
  TabController tabController ;
  CircularBottomNavigationController circularBottomNavigationController ;
  

  @override
  void initState() {
  
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    circularBottomNavigationController =
  CircularBottomNavigationController(tabController.index);

  }
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Color(0xFF1F9F84), //Color(0xFFFCAA2F) ,
        centerTitle: true,
        title: Text("Currency"),
        
        ),

        body: TabBarView(
          
          physics: NeverScrollableScrollPhysics(),
         controller: tabController,
          children: [
            Currency(),
            Dashboard(),
            ExitApp(),
            
          ]),

        bottomNavigationBar: CircularBottomNavigation(
          
          
          [
            TabItem(Icons.attach_money, "Home", Color(0xFF1F9F84), labelStyle: TextStyle(color: Color(0xFFFCAA2F), fontWeight: FontWeight.bold)),
            TabItem(Icons.dashboard, "Dashboard" , Color(0xFFFCAA2F), labelStyle: TextStyle(color: Color(0xFF1F9F84), fontWeight: FontWeight.bold)),
            TabItem(Icons.exit_to_app, "Reports", Colors.red),
            //TabItem(Icons.notifications, "Notifications", Colors.cyan),
          ],
          controller: circularBottomNavigationController,
          selectedCallback: (vlue){
            setState(() {
              tabController.index = vlue;
            });

          },
          
        ),

        drawer:Drawer(
          child: Column(
            children: <Widget>[
              
              UserAccountsDrawerHeader(
                accountName: Text("Ramzy Sadeq",style: TextStyle(
                  fontSize: 17 , 
                  fontWeight: FontWeight.bold
                ),),
                 accountEmail: Text("RamzySadeq@gmail.com"),
                 currentAccountPicture: CircleAvatar(
                //foregroundColor: Colors.grey,
                backgroundColor: Colors.grey,
                child: Text("R" , style: TextStyle(
                  fontSize: 40 , 
                  fontWeight: FontWeight.bold
                ),),
              ),
                 ),

                 

                   
                 ListTile(
                   title: Text("Currency" , style: TextStyle(
                     fontSize: 18 , fontWeight: FontWeight.w800
                   ),),
                   subtitle: Text("currency conversion"),
                   //leading: Icon(Icons.attach_money),
                   trailing: Icon(Icons.attach_money , color: Colors.blue, size: 40,),

                   onTap: (){
                     
                   },

                 ),
                 Divider(
                   height: 5,
                   thickness: 2,
                   ),

                   ListTile(
                   title: Text("Time" , style: TextStyle(
                     fontSize: 18 , fontWeight: FontWeight.w800
                   ),),
                   subtitle: Text("Time conversion"),
                   //leading: Icon(Icons.attach_money),
                   trailing: Icon(Icons.access_time , color: Colors.blue, size: 40,),

                 ),
                 Divider(
                   height: 5,
                   thickness: 2,
                   ),
                   ListTile(
                     onTap: (){
                       Navigator.pop(context);
                     },
                   title: Text("Close" , style: TextStyle(
                     fontSize: 18 , fontWeight: FontWeight.w800
                   ),),
                   subtitle: Text("Close Window"),
                   //leading: Icon(Icons.attach_money),
                   trailing: Icon(Icons.exit_to_app , color: Colors.blue, size: 40,),

                 ),
                 Divider(
                   height: 5,
                   thickness: 2,
                   ),





            ],
          ),
        ),
      
    );
  }
}