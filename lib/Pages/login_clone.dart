import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
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
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Mobile number, username or email",
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(), 
            ),
          ),

          //Password
          TextField(
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(),
            ),
          ),

          // Login
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color.fromARGB(255, 0, 99, 180),
              ),
            ),
            onPressed: () {},
            child: Text(
              '                        Log in                        ',
              style: TextStyle(color: Colors.grey),
            ),
          ),

          TextButton(
            onPressed: () {},
            child: Text(
              "Forgot password?",
              style: TextStyle(color: Colors.white),
            ),
          ),

          SizedBox(height: 30),

          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color.fromARGB(255, 52, 55, 57),
              ),
            ),
            onPressed: () {},
            child: Text(
              '            Log in with Facebook            ',
              style: TextStyle(color: Colors.white),
            ),
          ),

          SizedBox(height: 5),

          // Create Account
          OutlinedButton(
            onPressed: () {},
            child: Text(
              '            Create new account            ',
              style: TextStyle(color: Color.fromARGB(255, 0, 85, 189)),
            ),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.abc, color: Colors.white),
              Text(" Meta", style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
