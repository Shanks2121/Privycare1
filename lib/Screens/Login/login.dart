import 'package:flutter/material.dart';
import 'package:flutter_htl/Resources/firebase_auth_methods.dart';
import 'package:flutter_htl/Screens/Login/signup.dart';
import 'package:flutter_htl/constant.dart';
import 'package:provider/provider.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void loginUser() {
    context.read<FirebaseAuthMethods>().loginWithEmail(
      email: emailController.text,
      password: passwordController.text,
      context: context,
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              bottom: 60,
              left: 50,
              right: 50,
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/getslogin.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text("Log In",style: TextStyle(color: Colors.black,fontSize: 40, fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: primaryColor.withAlpha(50)
                      ),

                      child: TextField(
                        controller: emailController,
                        cursorColor: primaryColor,
                        decoration: InputDecoration(
                            icon: Icon(Icons.mail, color: primaryColor),
                            hintText: 'Enter the email',
                            border: InputBorder.none
                        ),
                      )
                  ),
                  SizedBox(height: 20),

                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: primaryColor.withAlpha(50)
                      ),

                      child: TextField(
                        controller: passwordController,
                        cursorColor: primaryColor,
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock, color: primaryColor),
                            hintText: 'Enter the password',
                            border: InputBorder.none
                        ),
                      )
                  ),
                  SizedBox(height: 20,),
                  // Add button
                  TextButton(
                      onPressed: loginUser,

                      child:Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width*0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: primaryColor,
                        ),
                        child: Center(
                          child: Text("Log In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      )
                  ),

                  SizedBox(height: 20),

                  // Add text button
                  TextButton(
                    onPressed: ()=>Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MySignup()),
                    ),
                    child: Text('Dont have account? Sign Up',style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
