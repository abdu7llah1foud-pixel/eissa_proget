import 'package:eissa_proget/HomeWork.dart';
import 'package:flutter/material.dart';

class hw_1 extends StatelessWidget {
  const hw_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.yellow,
          drawer: const Drawer(),
          appBar: AppBar(
            leading: IconButton(onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeWork()), (route) => false);
            }, icon:Icon(Icons.arrow_back_outlined)),
            backgroundColor: Colors.pinkAccent,
            title: const Text("السيرة الذاتية"),
            centerTitle: true,
            titleTextStyle: const TextStyle(
              fontSize: 25,
              //fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          body: Container(
            alignment: Alignment.topRight,
            child: Text(
              "الاسم: عبدالله الكامل \n التخصص: تقنية \n الجنسيه: يمني \n العمر:21 \n المستوى: بكلوريوس \n : الاعمال السابقة \n ..........-1 \n .........-2 \n .........-3",
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'OfficalFont',
              ),
            ),
            color: Colors.pinkAccent,
            margin: const EdgeInsets.all(20),
          )),
    );
  }
}
