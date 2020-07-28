import 'package:astra/back_widget/supportWidget.dart';
import 'package:astra/backend/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:astra/backend/funtion.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      backgroundColor: HexColor('1b2131'),
      body: SafeArea(child:Stack(

        children: <Widget>[
          Positioned(
            left: MediaQuery.of(context).size.height*0.03,
            top: MediaQuery.of(context).size.height*0.02,
            width: MediaQuery.of(context).size.width*0.05,
            height: MediaQuery.of(context).size.height*0.1,
            child:Image.asset('assets/icon_rosa.png',fit: BoxFit.fill),
          ),

          Positioned(
            right: MediaQuery.of(context).size.width*0.001,
            top: MediaQuery.of(context).size.height*0.001,
            width: MediaQuery.of(context).size.width*0.1,
            height: MediaQuery.of(context).size.height*0.15,
            child:Image.asset('assets/icon_astra.png',fit: BoxFit.fill),
          ),

          Positioned(
            right: MediaQuery.of(context).size.width*0.1,
            top: MediaQuery.of(context).size.height*0.02,
            child: Text("User name",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
              ),),
          ),

         Positioned(
            right: MediaQuery.of(context).size.width*0.1,
            top: MediaQuery.of(context).size.height*0.07,
            child: GestureDetector(
              onTap:() => showAlertMessage(context),
              child: new Text("LogOut",
                style: TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                ),),
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.09),
              child:Text("Robot Status : Balanced",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70
              ),),)
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.01,
            top: MediaQuery.of(context).size.height*0.13,
            width: MediaQuery.of(context).size.width*0.98,
            child: Divider(
              color: Colors.blueGrey,
              thickness: 3.5,
            ),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.01,
            top: MediaQuery.of(context).size.height*0.17,
            child: Text("Front View",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                  color: Colors.white70,
                  decoration: TextDecoration.underline
              ),),
          ),

          Positioned(
            right: MediaQuery.of(context).size.width/1.53,
            top: MediaQuery.of(context).size.height*0.17,
            child: Icon(mic?Icons.mic:Icons.mic_off,color: Colors.white,size: 25,)
          ),

          Positioned(
            right: MediaQuery.of(context).size.width/4,
            top: MediaQuery.of(context).size.height*0.17,
            child: Text("Main Camera",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                  color: Colors.white70,
                  decoration: TextDecoration.underline
              ),),
          ),

          AnimatedPositioned(
            duration:Duration(milliseconds:500),
            top:MediaQuery.of(context).size.height*0.2,
            right:robotHold?MediaQuery.of(context).size.width*0.0:-MediaQuery.of(context).size.width*0.06,
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.width*0.07,
            child:Container(
                decoration: BoxDecoration(
                  color:Colors.orange,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)
                  ),),
                child:Center(child:Icon(Icons.remove_circle_outline))
            )
          ),

          AnimatedPositioned(
              duration:Duration(milliseconds:500),
              top:MediaQuery.of(context).size.height*0.32,
              right:cameraHold?MediaQuery.of(context).size.width*0.0:-MediaQuery.of(context).size.width*0.06,
              height: MediaQuery.of(context).size.height*0.10,
              width: MediaQuery.of(context).size.width*0.07,
              child:Container(
                  decoration: BoxDecoration(
                    color:Colors.orange,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)
                    ),),
                  child:Center(child:Icon(Icons.camera))
                  )
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.3,
            top: MediaQuery.of(context).size.height*0.17,
            height: MediaQuery.of(context).size.height - MediaQuery.of(context).size.height*0.19,
            child: VerticalDivider(
              color: Colors.blueGrey,
              thickness: 2,
            ),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.01,
            top: MediaQuery.of(context).size.height*0.55,
            width: MediaQuery.of(context).size.width*0.29,
            child: Divider(
              color: Colors.blueGrey,
              thickness: 2,
            ),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.01,
            top: MediaQuery.of(context).size.height*0.59,
            child: Text("Sensor Reading",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                  color: Colors.white70,
                  decoration: TextDecoration.underline
              ),),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.025,
            top: MediaQuery.of(context).size.height*0.7,
            child: Text("Front:",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70
              ),),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.055,
            top: MediaQuery.of(context).size.height*0.71,
            width: MediaQuery.of(context).size.width*0.1,
            child:LinearPercentIndicator(
              percent: 0.9,
              progressColor: Colors.red,
            )
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.17,
            top: MediaQuery.of(context).size.height*0.7,
            child: Text("Back:",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70
              ),),
          ),

          Positioned(
              left: MediaQuery.of(context).size.width*0.2,
              top: MediaQuery.of(context).size.height*0.71,
              width: MediaQuery.of(context).size.width*0.1,
              child:LinearPercentIndicator(
                percent: 0.7,
                progressColor: Colors.red,
              )
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.025,
            top: MediaQuery.of(context).size.height*0.84,
            child: Text("Left:",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70
              ),),
          ),

          Positioned(
              left: MediaQuery.of(context).size.width*0.055,
              top: MediaQuery.of(context).size.height*0.85,
              width: MediaQuery.of(context).size.width*0.1,
              child:LinearPercentIndicator(
                percent: 0.1,
                progressColor: Colors.blue,
              )
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*0.17,
            top: MediaQuery.of(context).size.height*0.84,
            child: Text("Right:",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70
              ),),
          ),

          Positioned(
              left: MediaQuery.of(context).size.width*0.2,
              top: MediaQuery.of(context).size.height*0.85,
              width: MediaQuery.of(context).size.width*0.1,
              child:LinearPercentIndicator(
                percent: 0.5,
                progressColor: Colors.blue,
              )
          ),

          Positioned(
            right: MediaQuery.of(context).size.width*0.01,
            bottom: MediaQuery.of(context).size.height*0.07,
            width: MediaQuery.of(context).size.width*0.67,
            child: Divider(
              color: Colors.blueGrey,
              thickness: 2,
            ),
          ),

          Positioned(
            right: MediaQuery.of(context).size.width*0.015,
            bottom: MediaQuery.of(context).size.height*0.02,
            width: MediaQuery.of(context).size.width*0.65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Wifi Strength: Excelent',style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey)),
                Text('Battery percentage: 89%',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
                Text('Version: 0.0.1',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
              ],
            )
          ),

        ],
      )
      ),
    );

  }
}