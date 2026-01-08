import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

import 'HomeWork.dart';

class hw_8 extends StatefulWidget {
  const hw_8({super.key});

  @override
  State<hw_8> createState() => _hw_8State();
}

class _hw_8State extends State<hw_8> {
  File? file;


  getImage()async{
    final ImagePicker picker = ImagePicker();
// Pick an image
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
// Capture a photo.//  final XFile? photo = await picker.pickImage(source: ImageSource.camera);
  file=File(image!.path);
  setState(() {

  });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
          actions: [
          IconButton(onPressed: () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeWork()), (route) => false);
      }, icon:const Icon(Icons.arrow_back_outlined)),
        ],
        title:const Text("Abdullah Alkamel",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
        centerTitle:true,

        backgroundColor: Colors.blueGrey,
    ),
        body: Padding(
          padding: const EdgeInsets.all(2),
          child: Center(

            child: Container(
              color: Colors.white10,
              width: 500,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  if(file !=null)
                    Container(
                      width: 250,
                      height: 250,
                      child: ClipRRect(
                       borderRadius: BorderRadius.circular(250),
                           child:Image.file(file!,fit: BoxFit.cover,alignment: Alignment.center,
                           )
                      ),
                    ),
                 MaterialButton(onPressed: () async {
                  await getImage();
                 },
                   child: const Icon(Icons.add_a_photo),),
                  Container(
                    child: const TextField(
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                       label: Text("الاسم",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),textDirection: TextDirection.ltr,textAlign:TextAlign.right,),
                        hintText: ("هذا ليس كلمة مرور أو رقم تعريفي "),
                        suffixIcon: Icon(CupertinoIcons.person),
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
