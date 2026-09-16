import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/custom_button.dart';
import 'package:flutter_application_1/Components/custom_textField.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 50),

          //Logo
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJSN56hdPbvHRG1HfK3w_Ke-0ml1rlfQOXAJmmQsMj_A&s=10',
            height: 200,
          ),

          SizedBox(height: 30),

          // Judul
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Log Into Instagram",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          //Username
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextField(
              textColor: Colors.white,
              txtController: TextEditingController(),
              MyHint: "Username",
            ),
          ),
          // TextField(
          //   style: TextStyle(color: Colors.white),
          //   decoration: InputDecoration(
          //     hintText: "Mobile number, username or email",
          //     hintStyle: TextStyle(color: Colors.grey),
          //     border: OutlineInputBorder(), 
          //   ),
          // ),

          //Password
         Container(
            margin: EdgeInsets.all(10),
            child: CustomTextField(
              textColor: Colors.white,
              txtController: TextEditingController(),
              MyHint: "Password",
              
            ),
          ),

          // Login
          CustomButton( 
          buttonText: 'Log in',
          BackgroundColor: Color.fromARGB(255, 0, 99, 180), 
          textColor: Colors.white,
          onPressed: (){},
          ),

          // ElevatedButton(
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(
          //       Color.fromARGB(255, 0, 99, 180),
          //     ),
          //   ),
          //   onPressed: () {},
          //   child: Text(
          //     '                        Log in                        ',
          //     style: TextStyle(color: Colors.grey),
          //   ),
          // ),

          SizedBox(height: 10),
          Text(
            "Forgot password?",
            style: TextStyle(color: Colors.white),
          ),

          SizedBox(height: 30),

          CustomButton( 
          buttonText: 'Log in with Facebook',
          BackgroundColor: Color.fromARGB(255, 53, 53, 53), 
          textColor: Colors.white,
          onPressed: (){},
          ),
          
          // ElevatedButton(
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(
          //       Color.fromARGB(255, 52, 55, 57),
          //     ),
          //   ),
          //   onPressed: () {},
          //   child: Text(
          //     '            Log in with Facebook            ',
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),

          SizedBox(height: 5),

          // Create Account
          CustomButton( 
          buttonText: 'Create new account',
          BackgroundColor: Color.fromARGB(255, 22, 22, 22), 
          textColor: const Color.fromARGB(255, 49, 132, 233),
          onPressed: (){},
          ),

          SizedBox(height: 20),

          
              Text(" Meta", style: TextStyle(color: Colors.white)),

        ],
      ),
    );
  }
}