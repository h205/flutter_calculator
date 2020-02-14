//import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        title: Text("Calculator")
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
               Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("C", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.blueGrey[100],
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
       Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("+/-", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.blueGrey[100],
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
             
                  Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("%", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.blueGrey[100],
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
              Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("/", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.yellow,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
            
               
             ], //<Widget>[]


           ),//Row
            Row(
            
             children: <Widget>[
               Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("7", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.grey,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
       Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("8", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.grey,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
             
                  Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("9", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.grey,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
              Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("*", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.yellow,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
            
               
             ], //<Widget>[]


           ),//Row
            Row(
            
             children: <Widget>[
               Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("4", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.grey,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
       Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("5", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.grey,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
             
                  Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("6", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.grey,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
              Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("-", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.yellow,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
            
               
             ], //<Widget>[]


           ),//Row
            Row(
            
             children: <Widget>[
               Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("1", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.grey,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
       Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("2", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.grey,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
             
                  Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("3", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.grey,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
              Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("+", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.yellow,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
            
               
             ], //<Widget>[]


           ),//Row
           Row(
            
             children: <Widget>[
               Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("0", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.grey,
                 padding: EdgeInsets.only(left: 80 , top: 20,bottom: 20 ,right: 80),
                 shape: StadiumBorder(),
               ),//RaisedButton

               ),//Container
       Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text(".", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.grey,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
             
                  Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){},
                child: 
                Text("=", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30

                )//TextStyle
                 ), //text
                 color: Colors.yellow,
                 padding: EdgeInsets.all(20),
                 shape: CircleBorder(),
               ),//RaisedButton

               ),//Container
             
              
            
               
             ], //<Widget>[]


           )//Row

        ],//<Widget>[]
      )//Column
    );//Container
  }

}