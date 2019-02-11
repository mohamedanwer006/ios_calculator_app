//coded by : Mohamed Anwer Mohamed
//**********2/3/2019**************
//*********************
//***************
//********
//***
//*
/*Widget Tree of Project
***body=>column[
***container()
***container(
***column
***[
***row
***row
***row
***row
***row
***]
***)




*/

import 'package:flutter/material.dart';

// variables****************************
String text='';
double scale=1;
double iconSize=40;
double lastOperation;
double num1=0;
double num2=0;
double sum=0;
String operator='';
bool flag=false;
//***************************************
void main() => runApp(MaterialApp(
      home: Home(),
      title: 'Calculator App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    ));

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  double radius = 38;//for circle avatar radius
  double fontSize=30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Container(
                height: 90,
                child: Text(
                  '$text',
                  style: TextStyle(fontSize: 80,),
                  maxLines: 1,
                  textAlign: TextAlign.right,
                  textScaleFactor: scale,
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius:radius ,
                          backgroundColor: Colors.white70,
                          child:IconButton(
                            highlightColor: Colors.white,
                            iconSize: iconSize,
                            onPressed:()=>onPressBtn('AC'),
                             icon: Text('AC',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.black),
                            ),
                          ) ,
                        ),
                        CircleAvatar(
                          radius: radius,
                          backgroundColor: Colors.white70,
                          child:IconButton(
                            highlightColor: Colors.white,
                            iconSize: iconSize,
                            onPressed:()=>onPressBtn('+/-'),
                            icon: Text('+/-',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.black),
                            ),
                          ) ,
                        ),CircleAvatar(
                          radius: radius,
                          backgroundColor: Colors.white70,
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('%'),
                            icon: Text('%',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.black),
                            ),
                          ) ,
                        ),
                        CircleAvatar(
                          radius: radius,
                          backgroundColor: Colors.orangeAccent,
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('/'),
                            icon: Text('/',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),
                          ) ,
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius:radius ,
                          backgroundColor: Colors.grey[900],
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('7'),
                            icon: Text('7',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),
                          ) ,
                        ),
                        CircleAvatar(
                          radius: radius,
                          backgroundColor: Colors.grey[900],
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('8'),
                            icon: Text('8',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),
                          ) ,
                        ),CircleAvatar(
                          radius: radius,
                          backgroundColor: Colors.grey[900],
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('9'),
                            icon: Text('9',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),
                          ) ,
                        ),
                        CircleAvatar(
                          radius: radius,
                          backgroundColor: Colors.orangeAccent,
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('x'),
                            icon: Text('x',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),
                          ) ,
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius:radius ,
                          backgroundColor: Colors.grey[900],
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('4'),
                            icon: Text('4',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),
                          ) ,
                        ),
                        CircleAvatar(
                          radius: radius,
                          backgroundColor: Colors.grey[900],
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('5'),
                            icon: Text('5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),
                          ) ,
                        ),CircleAvatar(
                          radius: radius,
                          backgroundColor: Colors.grey[900],
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('6'),
                            icon: Text('6',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),

                          ) ,
                        ),
                        CircleAvatar(
                          radius: radius,
                          backgroundColor: Colors.orangeAccent,
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('-'),
                            icon: Text('-',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),
                          ) ,
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius:radius ,
                          backgroundColor: Colors.grey[900],
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('1'),
                            icon: Text('1',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),
                          ) ,
                        ),
                        CircleAvatar(
                          radius: radius,
                          backgroundColor: Colors.grey[900],
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('2'),
                            icon: Text('2',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),
                          ) ,
                        ),CircleAvatar(
                          radius: radius,
                          backgroundColor: Colors.grey[900],
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('3'),
                            icon: Text('3',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),
                          ) ,
                        ),
                        CircleAvatar(
                          radius: radius,
                          backgroundColor: Colors.orangeAccent,
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('+'),
                            icon: Text('+',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                  color: Colors.white),
                            ),
                          ) ,
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(width: 3,),
                        Container(
                          padding: EdgeInsets.only(right: 95),
                          child:IconButton(
                            highlightColor: Colors.white,
                            onPressed:()=>onPressBtn('0'),
                            icon: Text('0',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.white),
                            ),
                          ) ,
                          width: 175,
                          height: radius*2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(radius),color: Colors.grey[900]),
                        ),
                        SizedBox(height: 2,),
                        Container(
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
//                        padding: EdgeInsetsDirectional.only( start: 22),
                                child:CircleAvatar(
                                  radius: radius,
                                  backgroundColor: Colors.orangeAccent,
                                  child:IconButton(
                                    highlightColor: Colors.white,
                                    onPressed:()=>onPressBtn('.'),
                                    icon: Text('.',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Colors.white),
                                    ),
                                  ) ,
                                ) ,
                              ),
                              Container(
                                child:CircleAvatar(
                                  radius: 42,
                                  backgroundColor: Colors.orangeAccent,
                                  child:IconButton(
                                    highlightColor: Colors.white,
                                    onPressed:()=>onPressBtn('='),
                                    icon: Text('=',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Colors.white),
                                    ),
                                  ) ,
                                ) ,
                              ),
                            ],
                          ),
                          width: 180,
                          height: radius*2,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]
        )
    );
  }
  //logic func*************************************
  //*************************************
  void  onPressBtn(String button){
    if(button=='+/-'&& text==''){
        text='-';
    }
    if (text.length>=6){
      scale=0.75;
    }
    if(button=='AC'){
      setState(() {
        text='';
        scale=1;

      });
    }
    if(button=='.'){
      setState(() {
        text=text+'.';
      });
    }
    if(button=='%'){
      setState(() {
        double x =double.parse(text);
        x=x/100;
        text=x.toString();

      });
    }

    switch (button) {
      case '0' :
        onSetFlag();//to check if user enter number after => '='
        setState(() {
          text=text+'0';
        });
        break;
      case '1' :
        onSetFlag();
        setState(() {
          text=text+'1';
        });
        break;
      case '2' :
        onSetFlag();
        setState(() {
          text=text+'2';
        });
        break;
      case '3' :
        onSetFlag();
        setState(() {
          text=text+'3';
        });
        break;
      case '4' :
        onSetFlag();
        setState(() {
          text=text+'4';
        });
        break;
      case '5' :
        onSetFlag();
        setState(() {
          text=text+'5';
        });
        break;
      case '6' :
        onSetFlag();
        setState(() {
          text=text+'6';
        });
        break;
      case '7' :
        onSetFlag();
        setState(() {
          text=text+'7';
        });
        break;
      case '8' :
        onSetFlag();
        setState(() {
          text=text+'8';
        });
        break;
      case '9' :
        onSetFlag();
        setState(() {
          text = text+'9';
        });
        break;
      case '+' :
        setState(() {
          flag=false;
          num1 = double.parse(text);
          text = '';
          operator='+';
        });
        break;
      case '-' :
        setState(() {
          flag=false;
          num1 = double.parse(text);
          text = '';
          operator='-';
        });
        break;
      case 'x' :
        setState(() {
          flag=false;
          num1 = double.parse(text);
          text = '';
          operator='x';

        });
        break;
      case '/' :
        setState(() {
          flag=false;
          num1 = double.parse(text);
          text = '';
          operator='/';
        });
        break;

      case '=' :
        setState(() {
          num2 = double.parse(text);//To convert String to double
          flag=true;//used to check if user press' = ' or not
          if(operator=='+'){
            sum = num1 + num2;
            text =sum.toString();
          }
          if(operator=='-'){
            sum = num1-num2;
            text =sum.toString();
          }
          if(operator=='x'){
            sum = num1*num2;
            text =sum.toString();
          }
          if(operator=='/'){
            sum = num1/num2;
            text =sum.toString();
          }
        });
        break;
    }
  }

  void onSetFlag(){
    //if user enter number after complete operation (after press' = ')
    // reset all variables.............
    if(flag==true){
      setState(() {
        text='';
        num2=0;
        num1=0;
        sum=0;
        operator='';
        flag=false;
      });
    }
  }
}


