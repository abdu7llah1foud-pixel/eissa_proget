import 'package:flutter/material.dart';

import 'HomeWork.dart';

class hw_2 extends StatelessWidget {
  const hw_2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeWork()), (route) => false);
            }, icon:Icon(Icons.arrow_back_outlined)),
            backgroundColor: Colors.blue ,
            title: const Text("Abdullah Alkamel"),
            actions: [IconButton(onPressed: () {

            }, icon: Icon(Icons.info_outline)) ,
              Icon(Icons.home)],
            titleTextStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          body:Column(
            children: [
              Container(
                child: Text("Abdullah Alkamel", style: TextStyle(fontSize: 30.5),),
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                alignment: Alignment.topLeft,
              ),
              Container(
                child: Text("A conveniece widget that wraps a number of widgets that are commonly required for applcations implementing Material Desing.",
                  style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                padding: EdgeInsets.all(10),
                color: Colors.lightBlue,
                alignment: Alignment.center,
                height: 650,
              ),
            ],
          ),

        )
    );
  }
}
