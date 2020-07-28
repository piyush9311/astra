import 'package:flutter/material.dart';
import 'package:astra/funtion.dart';
import 'package:astra/data.dart';
import './second_screen.dart';


//class _logindata {
//  String name="";
//  String password="";
//}

class LoginStack extends StatelessWidget {
  final Size size;
//  _logindata _data= new _logindata();
  LoginStack({@required this.size});

  @override
  Widget build(BuildContext context){
    return ConstrainedBox(
      constraints: BoxConstraints.loose(size),
      child: Stack(
        children: [

          Positioned(
            top: MediaQuery.of(context).size.height*0.03,
            right: MediaQuery.of(context).size.height*0.01,
            width: MediaQuery.of(context).size.width*0.05,
            height: MediaQuery.of(context).size.height*0.1,
            child:Image.asset('assets/jc.png',fit: BoxFit.fill),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height*0.03,
            left: MediaQuery.of(context).size.height*0.01,
            width: MediaQuery.of(context).size.height*0.3,
            height: MediaQuery.of(context).size.height*0.1,
            child:Image.asset('assets/rosa.png',fit: BoxFit.fill),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height*0.96,
            right: MediaQuery.of(context).size.width*0.0,
            width:MediaQuery.of(context).size.width/2-MediaQuery.of(context).size.width*0.015,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Wifi Strength: Excelent",
                  style: TextStyle(
                      color: HexColor('6d716e'),
                      fontSize:  MediaQuery.of(context).size.height*0.030,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Text("Battery percentage: 89%",
                  style: TextStyle(
                      color: HexColor('6d716e'),
                      fontSize: MediaQuery.of(context).size.height*0.030,
                      fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
          ),

          Positioned(
            right: MediaQuery.of(context).size.width/5.5,
            top: MediaQuery.of(context).size.height/7,
            child: Text("Signin",
              style: TextStyle(
                  color: HexColor('6d716e'),
                  fontSize: MediaQuery.of(context).size.height*0.08,
                  fontWeight: FontWeight.w500
              ),),
          ),
          Positioned(
              right: MediaQuery.of(context).size.width/5,
              top: MediaQuery.of(context).size.height/3.95,
              height: MediaQuery.of(context).size.height*0.010,
              width: MediaQuery.of(context).size.width*0.070,
              child:Container(
                  color:Colors.blue
              )
          ),
          Positioned(
            left: MediaQuery.of(context).size.width/1.6,
            top: MediaQuery.of(context).size.height/2.65,
            child: Text("User Name",
              style: TextStyle(
                  color: HexColor('6d716e'),
                  fontSize: MediaQuery.of(context).size.height*0.035,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),

          Positioned(
              top: MediaQuery.of(context).size.height/2.25,
              left:MediaQuery.of(context).size.width/1.6,
              width:MediaQuery.of(context).size.width/4,
              child:Form(
                key:formKey,
                  child:TextFormField(
                    keyboardType: TextInputType.numberWithOptions(),
                obscureText: true,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height*0.03,
                        color:Colors.grey[500]),
                    hintText:'Enter Password'),
               onSaved: (value) => pass = value,
                    validator: (text) {
                      if (text == null || text.isEmpty)
                       { return 'Enter Password';}
                      else if (text == '0657')
                        {return null;}
                      else
                        {return 'Enter Correct Password';}
                    },
              ))
          ),

          Positioned(
              left: MediaQuery.of(context).size.width/1.6,
              top: MediaQuery.of(context).size.height/1.5,
              height: MediaQuery.of(context).size.height*0.09,
              width: MediaQuery.of(context).size.width*0.3,
              child:RaisedButton(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
                  color:HexColor('1b2131'),
                  onPressed: () {
                    if(formKey.currentState.validate())
                      {formKey.currentState.reset();
                      Navigator.pushNamed(context,'/Second');
                      }

                  },
                  child: Text("LOGIN",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height*0.035,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,),)
              ))

        ],
      ),
    );
  }
}