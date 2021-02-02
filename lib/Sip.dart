import 'package:GoodApp/GoodAppBundles.dart';
import 'package:GoodApp/PersonalGrowthDashboard.dart';
import 'package:GoodApp/bottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Sip extends StatefulWidget {
  @override
  _SipState createState() => _SipState();
}

class _SipState extends State<Sip> {
	
  @override
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setNavigationBarColor(Color.fromRGBO(55, 71, 79, 2));
    return Scaffold(
      appBar: AppBar(      
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
        backgroundColor: Color.fromRGBO(55, 71, 79, 2),
        
        title: Text("Self Improvement Program"),
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
Positioned(top: 8,left: 78, 
                    child:
                   Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white12),
                height: 50,
                width: 50,
                          ),
                          ),
                         
                     
                  Positioned(left: 78,top: 8, child: 
                IconButton(
                  splashRadius: 0.1,
                  icon: Image.asset('assets/icplant.png',width: 27,height: 27,),
                  onPressed: () {print("clicked Button plant");},
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


                        
                     
                  Positioned(left: 330,top: 8, child: 
                IconButton(
                  splashRadius: 0.1,
                  icon: Image.asset('assets/icon5.png',width: 27,height: 27,),
                  onPressed: () {print("clicked Button graph");
                             Navigator.pushReplacement(
                   context, 
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => PersonalGD(),
                        transitionDuration: Duration(seconds: 0),
                    ),
                    );
                    
                 
                 
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

       body: Column(children:[
         Stack(
            children:[
            Container(width: 500,height: 390,
            // color: Colors.red,
            padding: EdgeInsets.fromLTRB(20,22, 20, 0),
            child: Card(
                   color: Theme.of(context).canvasColor,
                   elevation: 1.5,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),
                   child: Column(children: [
                                      Stack(children:[
                                        Container(
                                          
                                        width: 500,height: 240,
                                        decoration:BoxDecoration(image:DecorationImage(image: AssetImage("assets/men2.png"),
                                        // fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.only(topLeft: const Radius.circular(20),topRight: const Radius.circular(20)),),
                                        ),
                                      
                                       Container(
                                                    padding:EdgeInsets.fromLTRB(20, 125, 0, 0) ,
                                                    width: 390,
                                                    height: 200,
                                                    // color: Colors.red,
                                                    child:
                                                     Text("Experts created bundless in collaboration with our users,so you can become a better version of yourself.",
                                                     style: TextStyle(fontSize: 16),
                                                     ),
                                                     ),

                                                     Container(
                                                    padding:EdgeInsets.fromLTRB(20, 190, 0, 0) ,
                                                    width: 390,
                                                    height: 240,
                                                    // color: Colors.red,
                                                    child:
                                                     Text("Self Improvement Program",
                                                     style: TextStyle(fontSize: 25, ),
                                                     ),
                                                     ), 
                                         

                                      ],
                                      ),
                                      Container(
                                        
                                        width: 500,height:120,
                                        decoration: BoxDecoration(color: Color.fromRGBO(55, 71, 79, 2),
                                        borderRadius: BorderRadius.only(bottomLeft: const Radius.circular(20),bottomRight: const Radius.circular(20)),),

                                        child:     Stack(children:[
                                                    
                                                    Container(
                                                    padding:EdgeInsets.fromLTRB(20, 30, 0, 0) ,
                                                    width: 290,
                                                    height: 100,
                                                    // color: Colors.red,
                                                    child:
                                                     Text("Bundle is a collection of tools as per your mood or time of the day. Use GoodApp at its most potential.",
                                                     style: TextStyle(color: Colors.white,fontSize: 16),
                                                     ),
                                                     ),

                                                     Positioned(left: 295,top: 45,
                                                         child: Container(
                                                         width: 90,height: 40,
                                                         child: Center(child: Text("SELECT")),
                                                         decoration: BoxDecoration(color: Colors.white,
                                                         borderRadius: BorderRadius.only(bottomLeft: const Radius.circular(10),bottomRight: const Radius.circular(10),
                                                         topLeft: const Radius.circular(10),topRight: const Radius.circular(10)),),
                                                       ),
                                                     ),

                                                   ]),
                                        ),
                          
                          
                           ],),
                        ),
                      ),
                  ],),//stack closed
             
              Container(
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/manwithplant.png'))),
                  width: 200,
                  height: 200,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Container(
                  margin: EdgeInsets.fromLTRB(25, 10, 5, 0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children:[Text("How it works",style:TextStyle(fontSize: 18 ),),
                      Padding(padding: EdgeInsets.only(top:5)),
                    Text("A self improvements program will give you one task idea per day.you are free to choose program as per yours needs and perform the task at your own place."),
                    ] ),  
                    width: 400,
                    height: 100,
                ),] 
              ),




    ]//column close

              
                   
    ),

       


    );
  }
}