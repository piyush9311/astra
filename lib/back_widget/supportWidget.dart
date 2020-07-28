import 'dart:io';

import 'package:flutter/material.dart';
import 'package:astra/backend/funtion.dart';

void showAlertMessage(BuildContext context) {
    print('something');
    var alert = AlertDialog(
      backgroundColor: HexColor('1b2131'),
      content: Text("Do you want to exit?",style:TextStyle(color:Colors.white),),
      actions: <Widget>[
        FlatButton(onPressed: () => Navigator.pop(context),
              child: Text("Back"),
        ),
         FlatButton(onPressed: () => exit(0),
            child: Text("Exit"),
        )
      ],
    );
    showDialog(context: context,
      builder: (BuildContext context){
        return alert;
      },
    );
  }




/*
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



 */