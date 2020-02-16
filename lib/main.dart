
//import 'package:flutter/foundation.dart';
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

class _Calculator extends State<Calculator>
{
  
  String text ='0';
  double numone=0 ;
  double numtwo=0 ;
   
  String res='0';
  String finalres='0'; 

  String opr='0';
  String preopr='0';

 


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

  Widget button (String btntxt , Color color , int num1) 
  {
    Container  container;
    if(num1==0){
     container= Container(
                 padding: EdgeInsets.only(bottom: 10) ,
                 child: RaisedButton(
                 onPressed: (){

                   calculate(btntxt);

                 },
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
                 onPressed: (){
                   
                   calculate(btntxt);


                 },
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
    void calculate (btntxt)
    {
      if(btntxt=='C'){

        text='';
        numone=0;
        numtwo=0;
        res='';
        finalres='';
        opr='';
        preopr='';

      }
      else if(opr=='=' && btntxt=='='){

        switch(preopr){
      
       case '+':
          finalres = add();
          break;
       case '-':
           finalres= sub();
          break;
       case 'x':
           finalres= mul();
          break;
       case '/':
           finalres= div();
          break;

      }
      }
      else if(btntxt == '%' ){
      
         res=(numone/100).toString();
         finalres=res;

      }
      else if(btntxt ==  '.'){

         if(!res.contains('.')){
           res+='.';
           finalres=res;

         }

      }
      else if(btntxt == '+/-'){

       res.startsWith('-') ? res=res.substring(1) :  res = '-' + res;
       finalres=res;

      }
      else if(btntxt=='+' || btntxt=='-' || btntxt=='x' || btntxt=='/' || btntxt=='=' ){
       if(numone==0){
         numone=double.parse(res);
       }
       else{
         numtwo=double.parse(res);

       }
      switch(opr){
      
       case '+':
          finalres = add();
          break;
       case '-':
           finalres= sub();
          break;
       case 'x':
           finalres= mul();
          break;
       case '/':
           finalres= div();
          break;


       }
       preopr=opr;
       opr=btntxt;
       res='';


      }

      else{
        if(res=='0'){
          res=btntxt;
        }
       else{
        res+=btntxt;
        finalres=res;
       }
      }
      setState(() {
        text=finalres;
      });
    }

      String add(){

      res=(numone + numtwo).toString();
      numone=double.parse(res);
      return decremove(res);
         

      }
       String sub(){

      res=(numone - numtwo).toString();
      numone=double.parse(res);
      return decremove(res);
         

      }
       String mul(){

      res=(numone * numtwo).toString();
      numone=double.parse(res);
      return decremove(res);
         

      }
       String div(){

      res=(numone / numtwo).toString();
      numone=double.parse(res);
      return decremove(res);
         

      }
      String decremove (String _res){

        if(_res.contains('.')){
       
       List<String> split =_res.split('.');
       
        if(!(int.parse(split[1]) > 0)){
              
              return split[0];
        }

        }
        return _res;

      }

    


  }
  