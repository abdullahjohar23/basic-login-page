import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/login.dart';

class Signup extends StatefulWidget {
    const Signup({super.key});

    @override
    State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                                        'assets/signup.jpg',
                                        height: 300,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.cover,
                                    ),
                                ),

                                SizedBox(height: 20),

                                //* Sign Up Text
                                Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    
                                    child: Text(
                                        'Sign Up',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 40
                                        ),
                                    ),
                                ),

                                SizedBox(height: 10),

                                //* Name
                                Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    
                                    child: Text(
                                        'Name',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        ),
                                    ),
                                ),
                                
                                SizedBox(height: 10),
                                
                                //* Name textfield
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

                                //* Email
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

                                //* Email textfield
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

                                //* Password
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
                                
                                //* Password textfield
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

                                SizedBox(height: 20),

                                //* Sign Up Button
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
                                            'Sign Up',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w500
                                            ),
                                        ),
                                    ),
                                ),

                                SizedBox(height: 20),

                                //* Already have an account
                                Center(
                                    child: Column(
                                        children: [
                                            Text(
                                                'Already have an account?',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16
                                                ),
                                            ),
                                            
                                            GestureDetector(
                                                onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => Login())
                                                    );
                                                },
                                                
                                                child: Text(
                                                    'Sign In',
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
