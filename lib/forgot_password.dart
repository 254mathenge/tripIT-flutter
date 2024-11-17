// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/login_page.dart';
import 'verification.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/imageflutter1.png', // Your logo/image
                    width: 200,
                    height: 200,
                    color: Colors.white,
                  ),
                  // const SizedBox(height: 5),
                  const Text(
                    'TripIT',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              // Spacer(),
              Card(
                // backgroundColor:Colors.white,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Title inside the card
                      //sign in button
                      //
                      Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                      const TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Enter Email Address',

                        
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(8.0),
                          // ),
                          // prefixIcon: Icon(Icons.email, color: Colors.pink),
                        ),
              
                      ),
                      SizedBox(height:5.0),
                      Container(
                        width: 300.0, // Set desired width
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 226, 7, 80),
                          // Border color and thickness
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => verification()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Forgot',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              // Spacer(),
                              SizedBox(width: 20),
                              //  Spacer(), // Space between text and icon
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color.fromARGB(255, 109, 35, 60),
                                ),
                                padding: EdgeInsets.all(
                                    4.0), // Adjust for arrow icon size
                                child: Icon(
                                  Icons.arrow_forward, // Arrow icon
                                  color: Colors.white,
                                  size: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Spacer(),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Having Trouble?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: const Text(
                      'Get Help',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
