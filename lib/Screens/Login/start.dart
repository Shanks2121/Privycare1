import 'package:flutter/material.dart';
import 'package:flutter_htl/constant.dart';
import 'package:flutter_htl/Screens/Login/login.dart';
import 'package:flutter_htl/Screens/Login/signup.dart';

class MyStart extends StatefulWidget {
  const MyStart({Key? key}) : super(key: key);
  @override
  _MyStartState createState() => _MyStartState();
}
class _MyStartState extends State<MyStart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Lets add some decorations
          Positioned(
              top: 100,
              right: -50,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: primaryColor,
                ),
              )
          ),

          Positioned(
              top: -50,
              left: -50,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: primaryColor,
                ),
              )
          ),

          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 250,
            left: MediaQuery.of(context).size.width / 2 - 150,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/getslogin.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 80,
            left: MediaQuery.of(context).size.width / 2 -125,
            child: TextButton(
                onPressed: ()=>{},

                child:Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: primaryColor,
                  ),
                  child: Center(
                    child: Text("Get Started", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                )
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 150,
            left: MediaQuery.of(context).size.width / 2 -20,
            child: TextButton(
              onPressed: ()=>Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyLogin()),
              ),
              child: Text(
                  "Login", style: TextStyle(color: Colors.black,fontSize: 20, )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

