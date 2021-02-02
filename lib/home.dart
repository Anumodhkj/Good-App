import 'package:GoodApp/GoodAppBundles.dart';
import 'package:GoodApp/PersonalGrowthDashboard.dart';
import 'package:GoodApp/Sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wt = MediaQuery.of(context).size.width;
    // final ht = MediaQuery.of(context).size.height;
    final clr = Color.fromRGBO(55, 71, 79, 2);
 FlutterStatusbarcolor.setNavigationBarColor(Color.fromRGBO(55, 71, 79, 2));
    return Scaffold(
      
      body: Column(
        children: [
          Center(
            child: Container(
              // color: Colors.red,
              margin: EdgeInsets.only(top: 100),
              child: Image.asset(
                'assets/men2.png',
                height: 300,
                width: 300,
              ),
            ),
          ),
          Container(
              child: Image.asset(
            'assets/icquotes.png',
            width: 30,
          )),
          Container(
            margin: EdgeInsets.only(top: 11),
            child: Center(
              child: Text(
                'Quote of the Day',
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 22, color: clr),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Center(
              child: Text(
                'To  pity  distress  is  but  human; to  relieve  it  is\n  Godlike.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: clr),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 230 ),
            padding:  EdgeInsets.only(right: 70 ),
            child: Column(
              children: [
                Text('Select a category\nfrom below',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: clr,
                      fontWeight: FontWeight.w500,
                    )),
                    Padding(padding: EdgeInsets.only(top: 12),
                      child: Image.asset('assets/imgdownArrow.png',
                      width: 60,
                      height: 60,),
                    ),
              ],
            ),
          )
        ],
      ),

  //---------------BOTTOM NAVIGATION BAR-------------------//


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
                  onPressed: () {print("clicked Button grid");
                  // Navigator.pushReplacement(
                  //  context, 
                  //     PageRouteBuilder(
                  //       pageBuilder: (context, animation1, animation2) => Sip(),
                  //       transitionDuration: Duration(seconds: 0),
                  //   ),
                  //   );
                  },
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

    );
  }
}
