
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:torch_compat/torch_compat.dart';

class HomePage extends StatefulWidget{
  @override
   createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  String  _torchStateText  ="Torch OFF";
  Color   _torchStateColor = Colors.red;
  bool    _checkState      = true;
  Icon _iconTorchState = Icon(Icons.highlight);



  void torch(){
   setState(() {
     if(_checkState == true){
          TorchCompat.turnOn();
          _torchStateText ="Torch ON";
          _torchStateColor = Colors.grey;
          _checkState = !_checkState;
     }
     else{
         TorchCompat.turnOff();
         _torchStateText ="Torch OFF";
         _torchStateColor = Colors.red;
         _checkState = !_checkState;
     }
   });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


              Padding(
                padding: EdgeInsets.only(top: 200,bottom: 100),
                  child: Text( _torchStateText,
                    style: TextStyle(
                      color: _torchStateColor,fontWeight: FontWeight.bold,fontSize: 20
                    ),
                  )),

              SizedBox(height: 20,),


              RaisedButton(
                onPressed:torch,
                splashColor: Colors.red,
                child:  Image(
                  image:AssetImage('lib/icons/flashlight.png'),
                ),
                //icon: _iconTorchState,
                //iconSize: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

}