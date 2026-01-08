import 'package:flutter/material.dart';

import 'HomeWork.dart';

class hw_6 extends StatelessWidget {
  const hw_6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeWork()), (route) => false);
          }, icon:Icon(Icons.arrow_back_outlined)),
          title: Text("Abdullah Alkamel"),
        ),
        backgroundColor: Colors.brown,
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue, // الإطار الأزرق
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // الحاوية الصفراء مع الحواف الدائرية
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.yellow,
                    ),
                  ),
                  // المستطيل الأحمر المائل
                  Transform.rotate(
                    angle: -0.1, // التحكم بزاوية الدوران
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  // الحاوية الخضراء داخل المستطيل الأحمر
                  Transform.rotate(
                    angle: -0.1, // نفس زاوية الدوران
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), // الحواف الدائرية
                      child: Container(
                        width: 70,
                        height: 70,
                        color: Colors.green,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "hello",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
