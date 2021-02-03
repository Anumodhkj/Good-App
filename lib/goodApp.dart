import 'package:GoodApp/GoodAppBundles.dart';
import 'package:GoodApp/PersonalGrowthDashboard.dart';
import 'package:GoodApp/bottomSheet.dart';
import 'package:GoodApp/cardandlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class GoodApp extends StatefulWidget {
  @override
  _GoodAppState createState() => _GoodAppState();
}

class _GoodAppState extends State<GoodApp> {
	
 
  @override
  Widget build(BuildContext context) {
     final colo=Color.fromRGBO(55, 71, 79, 2);
    FlutterStatusbarcolor.setNavigationBarColor(Color.fromRGBO(55, 71, 79, 2));
    return Scaffold(
      
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
                  onPressed: () {print("clicked Button plant");},
                  iconSize: 16,
                  color: Colors.white,
                ), ),

// --------------------------------------
Positioned(top: 8,left: 160, 
                   
                    child:
                   Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white12),
                height: 50,
                width: 50,
                          ),
                          ),
                    



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

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            backgroundColor: colo,
            expandedHeight: 150,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
            actions: [
              IconButton(icon: Icon(Icons.notification_important), onPressed: (){}),
              IconButton(icon: Icon(Icons.mobile_friendly), onPressed: (){}),
            ],
            
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left:0,bottom:0),
              title: ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0,0, 1),
              title: Text("Goop App",
              style:TextStyle(fontSize: 14,color: Colors.white)),
              subtitle: Text("Stay happy, Healthy and Productive",
              style:TextStyle(fontSize: 9,color: Colors.white),
              ),
              )
            ),
           
          ),
         SliverList(delegate: SliverChildListDelegate(
           [
            
             Cardandlist(),
             
            // (clickaction: (){
            //    print("popular");
            //  },
            //    iconii: Icons.star,
            //    ttext: 'Popular',
            //    customchild:ListView( scrollDirection: Axis.horizontal,
            //           children:[
            //               Cuscard(
            //                     imgloc: 'assets/manwithplant.png',
            //                      discri: 'Today ToDo ',),
            //               Cuscard(
            //                     imgloc: 'assets/manwithplant.png',
            //                      discri: 'Journal',),
            //               Cuscard(
            //                     imgloc: 'assets/manwithplant.png',
            //                      discri: 'Pomodoro',),
            //               Cuscard(imgloc: 'assets/manwithplant.png',
            //                      discri: 'Habit Builder',),
            //               Cuscard(imgloc: 'assets/manwithplant.png',
            //                      discri: 'Positive Affirmation',),
            //               Cuscard(imgloc: 'assets/manwithplant.png',
            //                      discri: '2048',),
            //           ]),
                              
                            // ),
              
           
    // one      
        
          //    clickaction: (){
          //      print("pro Favorate");
          //    },
          //      iconii: Icons.favorite,
          //      ttext: 'Favourates',
          //      customchild: ListView( scrollDirection: Axis.horizontal,
          //           children:[
          //               Cuscard(
          //                 imgloc: 'assets/manwithplant.png',
          //                  discri: 'Today ToDo ',),
          //               Cuscard(
          //                 imgloc: 'assets/manwithplant.png',
          //                  discri: 'Journal',),
          //               Cuscard(
          //                 imgloc: 'assets/manwithplant.png',
          //                  discri: 'Pomodoro',),
          //               Cuscard(imgloc: 'assets/manwithplant.png',
          //                  discri: 'Habit Builder',),
          //               Cuscard(imgloc: 'assets/manwithplant.png',
          //                  discri: 'Positive Affirmation',),
          //               Cuscard(imgloc: 'assets/manwithplant.png',
          //                  discri: '2048',),
          //           ]),
          //    ),


          ]))

        ],
      ),
      


    );
  }
}



