import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled14/Pages/Auth/SignUp.dart';
import 'package:untitled14/Pages/Home/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text("Login"),leading: Text(''),),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(

                  decoration: InputDecoration(
                      label: Text('email'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text('password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(height: 20),
                Container(
                    width: width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {
                        Get.to(Home());
                      },
                      child: Text('Login'),
                    )),
               SizedBox(height: 20,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 Text("Doesm't have an account?"),
                 TextButton(onPressed: (){
                  Get.to(SignUp());
                 }, child: Text('SignUp'))
               ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
