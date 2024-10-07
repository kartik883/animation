import 'package:calculator/component/mybutton.dart';
import 'package:calculator/const.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var input='';
  var result ='';
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black12,
          
          body:Column(
            children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment:Alignment.bottomRight,

                  child: Text(input.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),

                ),
                Text(result.toString(),style: TextStyle(fontSize: 25,color: Colors.white),),

              ]
              ),
            ),
          ),
              
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(title: 'AC',onpress: (){
                          input='';
                          result='';
                          setState(() {

                          });
                        },),
                        MyButton(title: '+/-',onpress: (){
                          input+='+/-';
                        setState(() {

                        });},),
                        MyButton(title: '%',onpress: (){
                          input+='%';
                          setState(() {

                          });

                          },),
                        MyButton(title: '/',color:Colors.orange,onpress: (){
                          input+='/';
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '7',onpress: (){
                          input+='7';
                          setState(() {

                          });
                        },),
                        MyButton(title: '8',onpress: (){
                          input+='8';
                          setState(() {

                          });
                        },),
                        MyButton(title: '9',onpress: (){
                          input+='9';
                          setState(() {

                          });
                        },),
                        MyButton(title: 'x',color:Colors.orange,onpress: (){
                          input+='x';
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '4',onpress: (){
                          input+='4';
                          setState(() {

                          });
                        },),
                        MyButton(title: '5',onpress: (){
                          input+='5';
                          setState(() {

                          });
                        }),
                        MyButton(title: '6',onpress: (){
                          input+='6';
                          setState(() {

                          });
                        },),
                        MyButton(title: '+',color:Colors.orange,onpress: (){
                          input+='+';
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '1',onpress: (){
                          input+='1';
                          setState(() {

                          });
                        },),
                        MyButton(title: '2',onpress: (){
                          input+='2';
                          setState(() {

                          });
                        },),
                        MyButton(title: '3',onpress: (){
                          input+='3';
                          setState(() {

                          });
                        },),
                        MyButton(title: '-',color:Colors.orange,onpress: (){
                          input+='-';
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '0',onpress: (){
                          input+='0';
                          setState(() {

                          });
                        },),
                        MyButton(title: '.',onpress: (){
                          input+='.';
                          setState(() {

                          });
                        },),
                        MyButton(title: 'DEL',onpress: (){
                          input = input.substring(0,input.length-1);
                          setState(() {

                          });
                        },),
                        MyButton(title: '=',color:Colors.orange,onpress: (){
                          equelpress();
                          setState(() {

                          });
                        },),
                      ],
                    ),
                  ],
                ),
              ),


            ],
          ) ,
        ),
      ),
    );
  }
   void equelpress(){
    String finalstring ;
    finalstring= input.replaceAll('x', '*');
    Parser p=Parser();
    Expression expression = p.parse(finalstring);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();


   }
}


