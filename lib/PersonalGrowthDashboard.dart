

import 'package:GoodApp/GoodAppBundles.dart';
import 'package:GoodApp/Sip.dart';
import 'package:GoodApp/bottomSheet.dart';
import 'package:GoodApp/smallBottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';



class PersonalGD extends StatefulWidget {
  @override
  _PersonalGDState createState() => _PersonalGDState();
}

class _PersonalGDState extends State<PersonalGD> {
	
   


  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setNavigationBarColor(Color.fromRGBO(55, 71, 79, 2));
    return Scaffold(
      appBar: AppBar(   
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
        backgroundColor: Color.fromRGBO(55, 71, 79, 2),
        actions: [
          IconButton(splashRadius: 0.1, icon: Icon(Icons.more_vert,), onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return Sbsheet();
            });
          }),
          Padding(
            padding: EdgeInsets.only(left: 14),
          )
        ],
        title: Text("Personal Growth Dashboard"),
      ),
      floatingActionButton: FloatingActionButton(child:Icon(Icons.add),
      onPressed: (){
             showModalBottomSheet(context: context, builder: (context){
              return Bbsheet();
             });

              
      }, // floating button on press closed

      backgroundColor: Color.fromRGBO(55, 71, 79, 2),splashColor: Color.fromRGBO(55, 71, 79, 1),
      mini: true,
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.endDocked,
      
      bottomNavigationBar: BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 1.0,
      elevation: 0,
      
        color: Color.fromRGBO(55, 71, 79, 2),

          
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
              Container( 
                child:Stack(children: [
                  
                        

                  Positioned(left: 3,top: 8, child: 
                IconButton(
                  splashRadius: 0.1,
                  icon: Icon(Icons.format_list_bulleted_sharp),
                  onPressed: () {print("clicked Drawer");
                                //  Navigator.push(context, 
                                //  MaterialPageRoute(builder: (context){
                                //    return Scaffold(drawer: Drawer(),); 
                                //  }

                                //  ));
                                },
                  iconSize: 30,
                  color: Colors.white,
                ), ),
//  -------------------------------------

                  Positioned(left: 78,top: 8, child: 
                IconButton(
                  splashRadius: 0.1,
                  icon: Image.asset('assets/icplant.png',width: 27,height: 27,),
                  onPressed: () {print("clicked Button plant");
                  
                  Navigator.pushReplacement(
                   context, 
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Sip(),
                        transitionDuration: Duration(seconds: 0),
                    ),
                    );
                  
                  },
                  iconSize: 16,
                  color: Colors.white,
                ), ),

// --------------------------------------

                  Positioned(left: 160,top: 8, child: 
                IconButton(
                  splashRadius: 0.1,
                  icon: Icon(Icons.apps),
                  onPressed: () {print("clicked Button grid");},
                  iconSize: 28,
                  color: Colors.white,
                ), ),


                     
                  Positioned(left: 240,top: 8, child: 
                IconButton(
                  splashRadius: 0.1,
                  icon: Image.asset('assets/icon4.png',width: 27,height: 27,),
                  onPressed: () {print("clicked Button mood");
                  
                    Navigator.pushReplacement(
                   context, 
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Gab(),
                        transitionDuration: Duration(seconds: 0),
                    ),
                    );
                    
                 

                  },
                  iconSize: 28,
                  color: Colors.white,
                ), ),

Positioned(top: 8,left: 330, 
                    child:
                   Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white12),
                height: 50,
                width: 50,
                          ),
                          ),
                        
                     
                  Positioned(left: 330,top: 8, child: 
                IconButton(
                  splashRadius: 0.1,
                  icon: Image.asset('assets/icon5.png',width: 27,height: 27,),
                  onPressed: () {print("clicked Button graph");
                  
                 
                  },
                  iconSize: 28,
                  color: Colors.white,
                ), ),

                ],
                ), // Stack of bottom Appbar          
                
                height: 65,
                width: 400,
                
              ),
        
              
      

            ],
          ),
        ),
   
    );
  }
}
