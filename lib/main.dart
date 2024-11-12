import 'dart:async';
import 'package:flutter/material.dart';
import 'login_page.dart';
void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer to navigate to the Home page after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PlanPage()),
      );
    });
  }

  void navigateToPlanPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => PlanPage()),
    );
  }

  void navigateToEnjoyPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => EnjoyPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink, // Background color for the splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/imageflutter1.png', // Your logo/image
              width: 100,
              height: 100,
              color: Colors.white,
            ),
            const SizedBox(height: 5),
            const Text(
              'TripIT',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),// Adds spacing below the buttons
          ],
        ),
      ),
    );
  }
}

class PlanPage extends StatelessWidget {
  get navigateToPlanPage => null;
  
  get navigateToEnjoyPage => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                Image.asset(
                'assets/imageflutter1.png', // Your logo/image
                width: 100,
                height: 100,
                color: Colors.pink,
            ),
            // const SizedBox(height: 5),
            const Text(
              'Trip',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              
              ),
              const Text(
              'IT',
              style: TextStyle(
                fontSize: 28,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
              
              )
          ]
        ),
          Image.asset(
              'assets/plan.png', // Your logo/image
              width: 200,
              height: 300,
              // color: Colors.white,
            ),
            const SizedBox(height: 5),
            const Text(
              'Plan Your Trip',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child:Text(
              "Travel Adobe XD Mobile Application Adobe XD UI kit” is one solution for all your travel and holiday business.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
           ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   ElevatedButton(
                    onPressed: navigateToPlanPage,
                    child: const Text('Skip',
                    style: TextStyle(
                    color:Colors.black,
                    )
                    ),
                  ),
                  ElevatedButton(
                    // onPressed: navigateToEnjoyPage
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EnjoyPage()),
                      );
                    },
                    // onPressed: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => const SecondRoute()),,
                    child: const Text('Next',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20,
                    ),
                    ),
                    
                  ),
                

                ],
              ),
            )

          ], 
      ),
    ),
    );
  }
}

class EnjoyPage extends StatelessWidget {
  get navigateToEnjoyPage => null;
  
  get navigateToPlanPage => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                Image.asset(
                'assets/imageflutter1.png', // Your logo/image
                width: 100,
                height: 100,
                color: Colors.pink,
            ),
            const SizedBox(height: 5),
            const Text(
              'Trip',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              
              ),
              const Text(
              'IT',
              style: TextStyle(
                fontSize: 28,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
              
              )
          ]
        ),
          Image.asset(
              "assets/Enjoy.jpg",
              width: 100,
              height: 200,
              // color: Colors.white,
            ),
            const SizedBox(height: 5),
            const Text(
              "Enjoy Your Trip",
              style: TextStyle(
                fontSize: 32,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child:Text(
              "Travel Adobe XD Mobile Application Adobe XD UI kit” is one solution for all your travel and holiday business.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
           ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   ElevatedButton(
                    onPressed: navigateToPlanPage,
                    child: const Text('Skip',
                    style: TextStyle(
                    color:Colors.black,
                    )
                    ),
                  ),
                  ElevatedButton(
                    // onPressed: navigateToEnjoyPage
                    onPressed: () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    // onPressed: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => const SecondRoute()),,
                    child: const Text('Next',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20,
                    ),
                    ),
                    
                  ),
                

                ],
              ),
            )
            // const SizedBox(height: 20),
            // const Spacer(), // Pushes the buttons to the bottom of the screen
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20.0),
            // ),
          ], 
      ),
    ),
    );
  }
}
