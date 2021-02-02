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
    // final clr = Color.fromRGBO(55, 71, 79, 2);

    FlutterStatusbarcolor.setNavigationBarColor(Color.fromRGBO(55, 71, 79, 2));
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
        backgroundColor: Color.fromRGBO(55, 71, 79, 2),
        actions: [
          IconButton(
              splashRadius: 0.1,
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Sbsheet();
                    });
              }),
          Padding(
            padding: EdgeInsets.only(left: 14),
          )
        ],
        title: Text("Personal Growth Dashboard"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Bbsheet();
              });
        }, // floating button on press closed

        backgroundColor: Color.fromRGBO(55, 71, 79, 2),
        splashColor: Color.fromRGBO(55, 71, 79, 1),
        mini: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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
              child: Stack(
                children: [
                  Positioned(
                    left: 3,
                    top: 8,
                    child: IconButton(
                      splashRadius: 0.1,
                      icon: Icon(Icons.format_list_bulleted_sharp),
                      onPressed: () {
                        print("clicked Drawer");
                        //  Navigator.push(context,
                        //  MaterialPageRoute(builder: (context){
                        //    return Scaffold(drawer: Drawer(),);
                        //  }

                        //  ));
                      },
                      iconSize: 30,
                      color: Colors.white,
                    ),
                  ),
//  -------------------------------------

                  Positioned(
                    left: 78,
                    top: 8,
                    child: IconButton(
                      splashRadius: 0.1,
                      icon: Image.asset(
                        'assets/icplant.png',
                        width: 27,
                        height: 27,
                      ),
                      onPressed: () {
                        print("clicked Button plant");

                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                Sip(),
                            transitionDuration: Duration(seconds: 0),
                          ),
                        );
                      },
                      iconSize: 16,
                      color: Colors.white,
                    ),
                  ),

// --------------------------------------

                  Positioned(
                    left: 160,
                    top: 8,
                    child: IconButton(
                      splashRadius: 0.1,
                      icon: Icon(Icons.apps),
                      onPressed: () {
                        print("clicked Button grid");
                      },
                      iconSize: 28,
                      color: Colors.white,
                    ),
                  ),

                  Positioned(
                    left: 240,
                    top: 8,
                    child: IconButton(
                      splashRadius: 0.1,
                      icon: Image.asset(
                        'assets/icon4.png',
                        width: 27,
                        height: 27,
                      ),
                      onPressed: () {
                        print("clicked Button mood");

                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                Gab(),
                            transitionDuration: Duration(seconds: 0),
                          ),
                        );
                      },
                      iconSize: 28,
                      color: Colors.white,
                    ),
                  ),

                  Positioned(
                    top: 8,
                    left: 330,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white12),
                      height: 50,
                      width: 50,
                    ),
                  ),

                  Positioned(
                    left: 330,
                    top: 8,
                    child: IconButton(
                      splashRadius: 0.1,
                      icon: Image.asset(
                        'assets/icon5.png',
                        width: 27,
                        height: 27,
                      ),
                      onPressed: () {
                        print("clicked Button graph");
                      },
                      iconSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ],
              ), // Stack of bottom Appbar

              height: 65,
              width: 400,
            ),
          ],
        ),
      ),

      //------------------BODY BODY BODY----------------------//
      body: ListView(children: [
        Container(
          width: double.infinity,
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(10)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/imgpgd1.png',
                    height: 130,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Today ToDo'),
                      Row(children: [
                        Icon(Icons.done),
                        Text('All set'),
                      ]),
                    ],
                  )
                ],
              )),
        ),
        CommonText(
          txt: 'Your  Daily  Routine',
        ),
        CommonCard(
            imgurl: 'assets/imgtile1.png',
            heading: 'DAILY ROUTINE',
            subheading: 'Tap to confingure'),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
        ),
        CommonText(
          txt: 'Upcoming Habits',
        ),
        CommonCard(
            imgurl: 'assets/imgtile1.png',
            heading: 'NO HABIT FOUND',
            subheading: 'Tap to confingure'),
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          margin: EdgeInsets.fromLTRB(25, 20, 25, 0),
          color: Color.fromRGBO(55, 71, 79, 2),
          child: Container(
            height: 65,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: ListTile(
              leading: Icon(
                Icons.more_time,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Free trial for 7 days",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              subtitle: Text("Limited time offer",
                  style: TextStyle(fontSize: 12, color: Colors.white)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 25),
        ),
        CommonText(
          txt: 'Upcoming home tasks',
        ),
        CommonCard(
            imgurl: 'assets/imgtile1.png',
            heading: 'NO TASKS PRESENT',
            subheading: 'Tap to confingure'),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
        ),
        CommonText(
          txt: 'Bad habits you want to break',
        ),
        CommonCard(
            imgurl: 'assets/imgtile1.png',
            heading: 'NO HABIT FOUND',
            subheading: 'Tap to confingure'),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
        ),
        CommonText(
          txt: 'Your last note',
        ),
        IcButton(
          txt: 'Take a note',
          ic: Icons.note,
        ),
         CommonText(
          txt: 'Your last journal',
        ),
        IcButton(
          txt: 'Write a journal',
          ic: Icons.article,
        ),
         CommonText(
          txt: '7 days mood chart',
        ),
        IcButton(
          txt: 'Mood Entry',
          ic: Icons.mood,
        ),
         CommonText(
          txt: '7 days sleep chart',
        ),
        IcButton(
          txt: 'Sleep Entry',
          ic: Icons.nights_stay,
        ),
         CommonText(
          txt: 'This month finance summary'),
           Container(
          width: double.infinity,
          height: 150,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(10)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/imgpgd1.png',
                    height: 130,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expense 0 \n Income 0 \n Net 0',style: TextStyle(
                       fontSize: 20,fontWeight: FontWeight.w500
                     
                      ),),
                      Row(children: [
                        
                        Text('Money Dairy'),
                      ]),
                    ],
                  )
                ],
              )),
        ),
      ]),
    );
  }
}

class CommonText extends StatelessWidget {
  final String txt;
  CommonText({this.txt});
  @override
  Widget build(
    BuildContext context,
  ) {
    final clr = Color.fromRGBO(55, 71, 79, 2);
    return Container(
      height: 25,
      width: double.infinity,
      padding: EdgeInsets.only(left: 15),
      child: Text(
        '$txt',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 17,
          color: clr,
        ),
      ),
    );
  }
}

class CommonCard extends StatelessWidget {
  final String imgurl;
  final String heading;
  final String subheading;
  CommonCard({
    this.heading,
    this.imgurl,
    this.subheading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        margin: EdgeInsets.only(right: 150, left: 15),
        alignment: Alignment.center,
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            child: ListTile(
              onTap: () {},
              leading: Image.asset('$imgurl'),
              title: Text('$heading'),
              subtitle: Text('$subheading'),
            )));
  }
}

class IcButton extends StatelessWidget {
  final IconData ic;
  final String txt;

  const IcButton({this.ic, this.txt});
  @override
  Widget build(BuildContext context) {
        final clr = Color.fromRGBO(55, 71, 79, 2);

    return FlatButton(
      onPressed: () {},
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 12, bottom: 25),
          padding: EdgeInsets.fromLTRB(0, 14, 0, 10),
          child: Row(
            children: [

              Icon(ic,
                size: 18,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
              ),
              Text(
                '$txt',
                style: TextStyle(fontSize: 17,
                fontWeight: FontWeight.w400,
                color: clr),

              ),
            ],
          )),
    );
  }
}
