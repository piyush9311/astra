import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './funtion.dart';
class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {



  @override
  Widget build(BuildContext context) {
    return  new Scaffold(

          backgroundColor: HexColor('1b2131'),
      body: Stack(

        children: <Widget>[

          Positioned(
            left: MediaQuery.of(context).size.height*0.03,
            top: MediaQuery.of(context).size.height*0.03,
              width: MediaQuery.of(context).size.width*0.05,
            height: MediaQuery.of(context).size.height*0.1,
              child:Image.asset('assets/rss.png',fit: BoxFit.fill),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.5,
            top: MediaQuery.of(context).size.height*0.01,
            width: MediaQuery.of(context).size.width*0.1,
            height: MediaQuery.of(context).size.height*0.15,
            child:Image.asset('assets/astra.jpg',fit: BoxFit.fill),
          ),

          Positioned(
            right: MediaQuery.of(context).size.height*0.001,
            top: MediaQuery.of(context).size.height*0.03,
            width: MediaQuery.of(context).size.width*0.15,
            height: MediaQuery.of(context).size.height*0.05,
            child: Text("User name",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),),
          ),

          Positioned(
            right: MediaQuery.of(context).size.width*0.05,
            top: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.08,
            height: MediaQuery.of(context).size.height*0.03,


              child: FlatButton(
                onPressed:()
                { print('something');_showAlertMessage(context);},

                child: new Text("LogOut",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey
                  ),),
              ),

          ),

          Positioned(
            right: MediaQuery.of(context).size.width*0.05,
            top: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.3,
            height: MediaQuery.of(context).size.height*0.03,
            child: Text("Robot Status : Balanced",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70
              ),),
          ),


          Positioned(
            left: MediaQuery.of(context).size.width*0.08,
            top: MediaQuery.of(context).size.height*0.15,
            width: MediaQuery.of(context).size.width*0.3,
            height: MediaQuery.of(context).size.height*0.035,
            child: Text("Front View",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                  color: Colors.white70,
                  decoration: TextDecoration.underline
              ),),
          ),



          Positioned(
            left: MediaQuery.of(context).size.width*0.6,
            top: MediaQuery.of(context).size.height*0.15,
            width: MediaQuery.of(context).size.width*0.3,
            height: MediaQuery.of(context).size.height*0.035,
            child: Text("Main Camera",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                  color: Colors.white70,
                  decoration: TextDecoration.underline
              ),),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.02,
            top: MediaQuery.of(context).size.height*0.2,
            width: MediaQuery.of(context).size.width*0.25,
            height: MediaQuery.of(context).size.height*0.38,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(20, 0, 30, 1),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10)),

            )
          ),

          Positioned(
              left: MediaQuery.of(context).size.width*0.02,
              top: MediaQuery.of(context).size.height*0.62,
              width: MediaQuery.of(context).size.width*0.25,
              height: MediaQuery.of(context).size.height*0.35,
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(20, 0, 30, 1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

              )
          ),

          Positioned(
              left: MediaQuery.of(context).size.width*0.29,
              top: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.69,
              height: MediaQuery.of(context).size.height*0.7,
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(20, 0, 30, 1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

              )
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.07,
            top: MediaQuery.of(context).size.height*0.64,
            width: MediaQuery.of(context).size.width*0.35,
            height: MediaQuery.of(context).size.height*0.035,
            child: Text("Sensor Reading",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                  color: Colors.white70,
                  decoration: TextDecoration.underline
              ),),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.05,
            top: MediaQuery.of(context).size.height*0.7,
            width: MediaQuery.of(context).size.width*0.15,
            height: MediaQuery.of(context).size.height*0.03,
            child: Text("Front",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70
              ),),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.2,
            top: MediaQuery.of(context).size.height*0.7,
            width: MediaQuery.of(context).size.width*0.15,
            height: MediaQuery.of(context).size.height*0.03,
            child: Text("Back",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70
              ),),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.05,
            top: MediaQuery.of(context).size.height*0.84,
            width: MediaQuery.of(context).size.width*0.15,
            height: MediaQuery.of(context).size.height*0.03,
            child: Text("Left",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70
              ),),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.2,
            top: MediaQuery.of(context).size.height*0.84,
            width: MediaQuery.of(context).size.width*0.15,
            height: MediaQuery.of(context).size.height*0.03,
            child: Text("Right",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70
              ),),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height*0.93,
            right: MediaQuery.of(context).size.width*0.15,
            width:MediaQuery.of(context).size.width*0.55,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Wifi Strength: Excelent",
                  style: TextStyle(
                      color: HexColor('6d716e'),
                      fontSize:  MediaQuery.of(context).size.height*0.035,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Text("Battery percentage: 89%",
                  style: TextStyle(
                      color: HexColor('6d716e'),
                      fontSize: MediaQuery.of(context).size.height*0.035,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            right: MediaQuery.of(context).size.height*0.01,
            bottom: MediaQuery.of(context).size.height*0.032,
            width: MediaQuery.of(context).size.width*0.08,
            height: MediaQuery.of(context).size.height*0.05,
            child: Text("Version",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
              ),),
          ),

          Positioned(
            right: MediaQuery.of(context).size.width*0.01,
            bottom: MediaQuery.of(context).size.height*0.017,
            width: MediaQuery.of(context).size.width*0.05,
            height: MediaQuery.of(context).size.height*0.03,
            child: Text("1.4.3",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
              ),),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.255,
            top: MediaQuery.of(context).size.height*0.145,
            width: MediaQuery.of(context).size.width*0.05,
            height: MediaQuery.of(context).size.height*0.92,
            child: VerticalDivider(
              color: Colors.blueGrey,
              thickness: 1,
              width: 10,
              indent: 2,
              endIndent: 2,
            ),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.01,
            top: MediaQuery.of(context).size.height*0.12,
            width: MediaQuery.of(context).size.width*0.98,
            height: MediaQuery.of(context).size.height*0.05,
            child: Divider(
              color: Colors.blueGrey,
              thickness: 1,
              height: 20,
              indent: 2,
              endIndent: 2,
            ),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.28,
            top: MediaQuery.of(context).size.height*0.885,
            width: MediaQuery.of(context).size.width*0.8,
            height: MediaQuery.of(context).size.height*0.05,
            child: Divider(
              color: Colors.blueGrey,
              thickness: 1,
              height: 20,
              indent: 2,
              endIndent: 2,
            ),
          ),

          Positioned(
            right: MediaQuery.of(context).size.width*0.72,
            top: MediaQuery.of(context).size.height*0.575,
            width: MediaQuery.of(context).size.width*0.26,
            height: MediaQuery.of(context).size.height*0.05,
            child: Divider(
              color: Colors.blueGrey,
              thickness: 1,
              height: 20,
              indent: 2,
              endIndent: 2,
            ),
          ),

        ],

      ),
        );

  }

  void _showAlertMessage(BuildContext context) {
    print('something');
    var alert = new AlertDialog(
      content: new Text("Do you want to exit?"),
      actions: <Widget>[
        new FlatButton(onPressed: (){Navigator.pop(context);},
        child: new Text("OK")
        ),

      ],

    );
    showDialog(context: context,
        builder: (BuildContext context){
      return alert;
        },
        );
  }
}