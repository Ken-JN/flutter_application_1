import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/custom_textField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
    TextEditingController txtPassword = TextEditingController();
    String statusLogin = "";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Ini Login Page king"),),
      body: Column(
        children: [
          Text("Welkam tu ma paradiseee " + statusLogin.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
          Container(
            margin: EdgeInsets.all(20),
            child: CustomTextField(
              textColor: Colors.white,
              txtController: txtUsername,
              MyHint: "Username",
              
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: CustomTextField(
              textColor: Colors.white,
              txtController: txtPassword,
              MyHint: "Password",
          
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(style: ButtonStyle(),onPressed: () {
              String username = txtUsername.text;
              String password = txtPassword.text;
              if(username == "admin" && password == "admin"){
                
                setState(() {
                  statusLogin = "admin";
                  print("Login Berhasil");
                });
                
              }else{
                
                setState(() {
                  statusLogin = "gagal";
                  print("Login Gagal");
                });
                
              }
            },child: Text('Login'),),
            ElevatedButton(style: ButtonStyle(),onPressed: () {},child: Text('Register'),)
            ],
            ),
        ],
      ), 
    );
  }
}