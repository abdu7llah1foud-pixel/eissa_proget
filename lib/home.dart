import 'dart:io';

import 'package:eissa_proget/HomeWork.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'login.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  File? file;


  getImage()async{
    
    final ImagePicker picker = ImagePicker();
// Pick an image.
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
          title: Text("Abdullah Alkamel", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
          backgroundColor:Colors.blueGrey,
        ),
        drawer: Drawer(
          backgroundColor: Colors.cyan,
          width: MediaQuery.of(context).size.width/2+109,
          child: Container(

            padding: EdgeInsets.all(15),
            child: ListView( children: [
              Row(
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset("images/os.png", fit: BoxFit.cover,),
                      )
                  ),
                  Expanded(child: ListTile(
                    title: Text("Abdullah Alkamel"),
                    subtitle: Text("abdullahalkaml50.com"),
                  ))
                ],
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => home()), (route) => false);

                },
              ),
              ListTile(
                title: Text("Login"),
                leading: Icon(Icons.login),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => login(),), (route) => false);

                },
              ),
              ListTile(
                title: Text("HomeWork"),
                leading: Icon(Icons.home_work_outlined),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeWork(),), (route) => false);
                },
              ),
              ListTile(
                title: Text("Accounts"),
                leading: Icon(Icons.account_box),
                onTap: () {

                },
              ),
              ListTile(
                title: Text("Help"),
                leading: Icon(Icons.help),
                onTap: () {

                },
              ),
              ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
                onTap: () {

                },
              ),
              ListTile(
                title: Text("Sharing"),
                leading: Icon(Icons.share),
                onTap: () {

                },
              ),

            ],),
          ),
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
              // Container(
              //   child: const TextField(
              //     keyboardType: TextInputType.text,
              //     textAlign: TextAlign.end,
              //     decoration: InputDecoration(
              //       label: Text("الاسم",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),textDirection: TextDirection.ltr,textAlign:TextAlign.right,),
              //       hintText: ("هذا ليس كلمة مرور أو رقم تعريفي "),
              //       suffixIcon: Icon(CupertinoIcons.person),
              //     ),
              //   ),
              // ),

            ],
          ),
        ),
      ),
    ),

      ),
    );
  }
}
