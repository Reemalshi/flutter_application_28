import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_28/componants/text_form_default.dart';
import 'package:image_picker/image_picker.dart';



class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  // TextEditingController name = TextEditingController();
  // TextEditingController email = TextEditingController();
  // TextEditingController Password = TextEditingController();
  // TextEditingController ID = TextEditingController();
  

     File? image;
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
                      children:[
                        Card(
                          color: Colors.grey.shade300,
                          margin: const EdgeInsets.only(top: 40),
                          child: SizedBox(
                              height: MediaQuery.sizeOf(context).height*0.85,
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 45.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    TextFieldDefault(
                                      labelText: "Name", 
                                      icon: Icon(Icons.person),
                                      isEnabled: true,),
                                    TextFieldDefault(
                                      labelText: "Email",
                                     icon: const Icon(Icons.email),
                                      isEnabled: true,),
                                    TextFieldDefault(
                                      labelText: "Password", 
                                      icon: const Icon(Icons.password),
                                      isEnabled: true,),
                                    TextFieldDefault(
                                      labelText: "Phone", 
                                      icon: Icon(Icons.phone),
                                      isEnabled: true,),
                                    TextFieldDefault(
                                      labelText: "ID", 
                                      icon: Icon(Icons.numbers),
                                      isEnabled: true,),
                                    TextFieldDefault(
                                      labelText: "OTP", 
                                      icon: Icon(Icons.security),
                                      isEnabled: true,),
                                    MaterialButton(
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      color: Colors.grey,
                                      child: Text("Create Account"),
                                    ),   
                                  ],
                                ),
                              )),
                        ),
                       Positioned(
                          top: .0,
                          left: .0,
                          right: .0,
                          child: Center(
                            child: image == null ? 
                            InkWell(
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blueGrey
                                ),
                                child: const Icon(Icons.person, color: Colors.black ,size: 40,),
                              ),
                              onTap: () async{
                                final XFile? file = await picker.pickImage(source: ImageSource.gallery);
                                image = File(file!.path);
                                setState(() {});
                              },
                            ) : CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.blueGrey,
                              backgroundImage: FileImage(image!),
                            ),
                          ),
                        )
                      ],
                    ),
          ),
        ),
      ),
    );
  }
}