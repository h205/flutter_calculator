//import 'dart:html';

//import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(204,238,247, 1),
        title: Text("Calculator", 
        style: TextStyle(
          color: Colors.black,
          fontSize: 30
        ),//TextStyle
        )//text
      ),//appBar
    
    body: Mycal()
    ), //Scaffold
    )//MaterialApp
    );//runApp


class Mycal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Calculator();
  }



}
class Calculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Calculator();
  }

}

class _Calculator extends State<Calculator>{
  
  String text ='0';
  double numone=0 ;
  double numtwo=0 ;
   
  String res='0';
  String finalres='0'; 


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
     
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                
                child:
              Text(text, 
              style: TextStyle(
                fontSize: 50,
                color: Colors.black
                
              ),//TextStyle
              maxLines: 1,
              textAlign: TextAlign.right,
            
              )//text

              )//Expanded
             
            ],

          ),//Row
           Row(
            
             children: <Widget>[
             button('C', Color.fromRGBO(204,238,247, 1),1),
             button('+/-', Color.fromRGBO(204,238,247, 1),1),
             button('%', Color.fromRGBO(204,238,247, 1),1),
             button('/', Color.fromRGBO(204,78,0, 1),1)
              
             ], //<Widget>[]


           ),//Row
            Row(
            
             children: <Widget>[
               
             button('7', Color.fromRGBO(108,113,113, 1),1),
             button('8', Color.fromRGBO(108,113,113, 1),1),
             button('9', Color.fromRGBO(108,113,113, 1),1),
             button('x', Color.fromRGBO(204,78,0, 1),1)
              
               
             ], //<Widget>[]


           ),//Row
            Row(
            
             children: <Widget>[
               
             button('4', Color.fromRGBO(108,113,113, 1),1),
             button('5', Color.fromRGBO(108,113,113, 1),1),
             button('6', Color.fromRGBO(108,113,113, 1),1),
             button('-', Color.fromRGBO(204,78,0, 1),1)
           
            
               
             ], //<Widget>[]


           ),//Row
            Row(
            
             children: <Widget>[
               
             button('1', Color.fromRGBO(108,113,113, 1),1),
             button('2', Color.fromRGBO(108,113,113, 1),1),
             button('3', Color.fromRGBO(108,113,113, 1),1),
             button('+', Color.fromRGBO(204,78,0, 1),1)
             
                 
              
            
               
             ], //<Widget>[]


           ),//Row
           Row(
            
             children: <Widget>[
             
             button('0', Color.fromRGBO(108,113,113, 1),0),
             button('.', Color.fromRGBO(108,113,113, 1),1),
             button('=', Color.fromRGBO(204,78,0, 1),1)
              
            
               
             ], //<Widget>[]


           )//Row

        ],//<Widget>[]
      )//Column
    );//Container
  }

  Widget button (String btntxt , Color color , int num1) {
    Container  container;
    if(num1==0){
     container= Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text(btntxt, style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: color,
                 padding: EdgeInsets.only(right: 80, left: 80, top: 20, bottom:20 ),
                 shape: StadiumBorder(),
               ),//RaisedButton

               );//Container
    }
        else {
         container=  Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text(btntxt, style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: color,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               );//Container






        }

       return container;
    }


  }