

import 'package:flutter/material.dart';

class simplecalculator extends StatefulWidget {
   simplecalculator({super.key});

  @override
  State<simplecalculator> createState() => _simplecalculatorState();
}

class _simplecalculatorState extends State<simplecalculator> {
  final myController=TextEditingController();

  final myController1=TextEditingController();

 double result=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('SIMPLISTIC CALCULATOR',
       style: TextStyle(color: Colors.white,)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 300),
          child: Column(
            children: [
            SizedBox(height: 40,),
            Align(
              alignment: Alignment.centerRight,
              child: Text(result.toString(),
              style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold,
    fontSize: 19,
    ),),
            ),
            TextFormField(

              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),),
          SizedBox(height: 50,),
            TextFormField(
              controller: myController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter number',
              ),),
            SizedBox(height: 50,),
            TextFormField(
              controller: myController1,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter number',
              ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent
            ),
            onPressed: () {
                  print(myController.text);
                  print(myController1.text);
                  double num1=double.parse(myController.text);
                  double num2=double.parse(myController1.text);
                  result=(num1+num2);
                  print(result);
                  setState(() {

                  });

    },
    child: Text('+')),
    ElevatedButton(
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.lightBlueAccent
    ),
    onPressed: () {
      print(myController.text);
      print(myController1.text);
      double num1=double.parse(myController.text);
      double num2=double.parse(myController1.text);
       result=(num1-num2);
      print(result);
      setState(() {

      });
    },
    child: Text('-')),
    ElevatedButton(
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.lightBlueAccent
    ),
    onPressed: () {
      print(myController.text);
      print(myController1.text);
      double num1=double.parse(myController.text);
      double num2=double.parse(myController1.text);
       result=(num1*num2);
      print(result);
      setState(() {

      });
    },
    child: Text('*')),
    ElevatedButton(
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.lightBlueAccent
    ),
    onPressed: () {
      print(myController.text);
      print(myController1.text);
      double num1=double.parse(myController.text);
      double num2=double.parse(myController1.text);
      result=(num1/num2);
      print(result);
      setState(() {

      });
    },
    child: Text('/')),
    ],
    )
    ]
    ),
    ),
      )
    );
  }
}

