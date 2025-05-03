import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/signup.dart';

class Login extends StatefulWidget {
    const Login({super.key});

    @override
    State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                        
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                                //* Image
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(180),
                                    ),
                                    
                                    child: Image.asset(
                                        'assets/login.jpg',
                                        height: 300,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.cover,
                                    ),
                                ),

                                SizedBox(height: 20),

                                //* Login Text
                                Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                        'Login',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 40
                                        ),
                                    ),
                                ),

                                SizedBox(height: 10),

                                //* Email Label
                                Padding(
                                    padding: const EdgeInsets.only(left: 20.0),

                                    child: Text(
                                        'Email',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        ),
                                    ),
                                ),

                                SizedBox(height: 10),

                                //* Email TextField
                                Container(
                                    margin: EdgeInsets.symmetric(horizontal: 15),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white70),
                                        borderRadius: BorderRadius.circular(30),
                                    ),

                                    child: TextField(
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.symmetric(horizontal: 20)
                                        ),
                                    ),
                                ),

                                SizedBox(height: 20),

                                //* Password Label
                                Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    
                                    child: Text(
                                        'Password',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        ),
                                    ),
                                ),

                                SizedBox(height: 10),

                                //* Password TextField
                                Container(
                                    margin: EdgeInsets.symmetric(horizontal: 15),
                                    
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white70),
                                        borderRadius: BorderRadius.circular(30),
                                    ),
                                    
                                    child: TextField(
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.symmetric(horizontal: 20)
                                        ),
                                    ),
                                ),

                                SizedBox(height: 10),

                                //* Forgot Password
                                    Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    
                                    children: [
                                        Padding(
                                            padding: const EdgeInsets.only(right: 20.0),
                                            child: Text(
                                                'Forgot Password?',
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 16
                                                ),
                                            ),
                                        ),
                                    ],
                                ),

                                SizedBox(height: 20),

                                //* Sign In Button
                                Container(
                                    height: 45,
                                    margin: EdgeInsets.symmetric(horizontal: 20),
                                    width: double.infinity,
                                    
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    
                                    child: Center(
                                        child: Text(
                                            'Sign In',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w500
                                            ),
                                        ),
                                    ),
                                ),

                                SizedBox(height: 10),

                                //* Or
                                Center(
                                    child: Text(
                                        'Or',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20
                                        ),
                                    ),
                                ),

                                SizedBox(height: 10),

                                //* Google Sign In
                                Container(
                                    height: 45,
                                    margin: EdgeInsets.symmetric(horizontal: 20),
                                    
                                    decoration: BoxDecoration(
                                        color: Color(0xFF2E2F3E),
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Image.asset('assets/google.png', height: 30, width: 30, color: Colors.amber),
                                            SizedBox(width: 10),
                                            
                                            Text(
                                                'Sign In with Google',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20
                                                ),
                                            ),
                                        ],
                                    ),
                                ),

                                SizedBox(height: 20),

                                //* Don't have account
                                Center(
                                    child: Column(
                                        children: [
                                            Text(
                                                "Don't have an account?",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16
                                                ),
                                            ),
                                            
                                            GestureDetector(
                                                onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => Signup())
                                                    );
                                                },
                                                
                                                child: Text(
                                                    'Sign Up',
                                                    style: TextStyle(
                                                        color: Colors.amber,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),
                                ),

                                SizedBox(height: 20),
                            ],
                        ),
                    ),
                ),
            ),
        );
    }
}
