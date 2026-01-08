import 'package:eissa_proget/home.dart';
import 'package:eissa_proget/hw_4.dart';
import 'package:eissa_proget/hw_5.dart';
import 'package:eissa_proget/hw_6.dart';
import 'package:eissa_proget/hw_7.dart';
import 'package:flutter/material.dart';

import 'hw_1.dart';
import 'hw_2.dart';
import 'hw_3.dart';
import 'hw_8.dart';
import 'hw_9.dart';

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => home()), (route) => false);
          }, icon:Icon(Icons.arrow_back_outlined)),
          title: Text("HomeWork",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold , ),),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          children: [
        Column(
            children: [
              Container(
               // padding: const EdgeInsets.all(30.0),
                margin: const EdgeInsets.all(30.0),
                color: Colors.teal,
                width: double.infinity,
                child: MaterialButton(onPressed: ()
                {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => hw_1()), (route) => false);
                },
                child: Text("HomeWork 1 " , style: TextStyle(fontSize: 25.0),),
                ),
              ),
              Container(
              //  padding: const EdgeInsets.all(30.0),
                margin: const EdgeInsets.all(30.0),
                color: Colors.teal,
                width: double.infinity,
                child: MaterialButton(onPressed: ()
                {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => hw_2()), (route) => false);
                },
                  child: Text("HomeWork 2 " , style: TextStyle(fontSize: 25.0),),
                ),
              ),
              Container(
              //s  padding: const EdgeInsets.all(30.0),
                margin: const EdgeInsets.all(30.0),
                color: Colors.teal,
                width: double.infinity,
                child: MaterialButton(onPressed: ()
                {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => hw_3()), (route) => false);
                },
                  child: Text("HomeWork 3 " , style: TextStyle(fontSize: 25.0),),
                ),
              ),
              Container(
                //s  padding: const EdgeInsets.all(30.0),
                margin: const EdgeInsets.all(30.0),
                color: Colors.teal,
                width: double.infinity,
                child: MaterialButton(onPressed: ()
                {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => hw_4()), (route) => false);
                },
                  child: Text("HomeWork 4 " , style: TextStyle(fontSize: 25.0),),
                ),
              ),
              Container(
                //s  padding: const EdgeInsets.all(30.0),
                margin: const EdgeInsets.all(30.0),
                color: Colors.teal,
                width: double.infinity,
                child: MaterialButton(onPressed: ()
                {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => hw_5()), (route) => false);
                },
                  child: Text("HomeWork 5 " , style: TextStyle(fontSize: 25.0),),
                ),
              ),
              Container(
                //s  padding: const EdgeInsets.all(30.0),
                margin: const EdgeInsets.all(30.0),
                color: Colors.teal,
                width: double.infinity,
                child: MaterialButton(onPressed: ()
                {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => hw_6()), (route) => false);
                },
                  child: Text("HomeWork 6 " , style: TextStyle(fontSize: 25.0),),
                ),
              ),
              Container(
                //s  padding: const EdgeInsets.all(30.0),
                margin: const EdgeInsets.all(30.0),
                color: Colors.teal,
                width: double.infinity,
                child: MaterialButton(onPressed: ()
                {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => hw_7()), (route) => false);
                },
                  child: Text("HomeWork 7 " , style: TextStyle(fontSize: 25.0),),
                ),
              ),
              Container(
                //s  padding: const EdgeInsets.all(30.0),
                margin: const EdgeInsets.all(30.0),
                color: Colors.teal,
                width: double.infinity,
                child: MaterialButton(onPressed: ()
                {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => hw_8()), (route) => false);
                },
                  child: Text("HomeWork 8 " , style: TextStyle(fontSize: 25.0),),
                ),
              ),
              Container(
                //s  padding: const EdgeInsets.all(30.0),
                margin: const EdgeInsets.all(30.0),
                color: Colors.teal,
                width: double.infinity,
                child: MaterialButton(onPressed: ()
                {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => hw_9()), (route) => false);
                },
                  child: Text("HomeWork 9 " , style: TextStyle(fontSize: 25.0),),
                ),
              ),
            ],
          ),
                ],)
        ),
    );
  }
}
