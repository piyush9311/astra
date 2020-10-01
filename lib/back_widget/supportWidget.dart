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



