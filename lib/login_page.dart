import 'package:flutter/material.dart';
import 'package:loginexample/button.dart';
import 'package:loginexample/button_two.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[3000],
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              // Not Sure Why Flutter Likes the 'const' Tag
              SizedBox(
                height: 30,
              ),
              // Logo
              Icon(
                Icons.camera,
                size: 100,
              ),

              SizedBox(
                height: 30,
              ),
              // Message
              Text(
                'Welcome Back IU Students',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),

              SizedBox(
                height: 30,
              ),
              // User
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      fillColor: Color.fromARGB(255, 238, 238, 238),
                      filled: true,
                      hintText: "Username"),
                ),
              ),

              SizedBox(
                height: 15,
              ),
              // Password
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      fillColor: Color.fromARGB(255, 238, 238, 238),
                      filled: true,
                      hintText: "Password"),
                  obscureText: true,
                ),
              ),

              SizedBox(
                height: 10,
              ),
              // Forgot Password
              Text('Forgot Password?'),

              SizedBox(
                height: 70,
              ),

              // Sign In Button
              button(),

              SizedBox(
                height: 15,
              ),

              // Continue
              Text('Or Continue With'),

              SizedBox(
                height: 15,
              ),

              // Duo
              button_two(),

              SizedBox(
                height: 55,
              ),

              // Register Button
              Text("Not a Member?"),
              SizedBox(
                height: 15,
              ),
              Text(
                "Register Now",
                style: TextStyle(color: Colors.lightBlue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
