import 'package:flutter/material.dart';
import 'package:flutter_htl/constant.dart';
import 'package:flutter_htl/Resources/firebase_crud.dart';
class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Map<dynamic, dynamic> userData = {};
  @override
  void initState() {
    super.initState();
    getUserData().then((data) {
      setState(() {
        userData = data!;
      });
    });
  }
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
            bottom: 60,
            left: 50,
            right: 50,
            child: Column(
              children: [
                Text("My Profile",style: TextStyle(color: Colors.black,fontSize: 40, fontWeight: FontWeight.bold),),
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
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          icon: Icon(Icons.mail, color: primaryColor),
                          hintText: '${userData['email']}',
                          border: InputBorder.none
                      ),
                    )
                ),
                SizedBox(height: 20),

                // Add second text field
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: primaryColor.withAlpha(50)
                    ),

                    child: TextField(
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          icon: Icon(Icons.person, color: primaryColor),
                          hintText: '${userData['name']}',
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
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          icon: Icon(Icons.phone, color: primaryColor),
                          hintText: '${userData['phone']}',
                          border: InputBorder.none
                      ),
                    )
                ),

                SizedBox(height: 20,),

                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: primaryColor.withAlpha(50)
                    ),

                    child: TextField(
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock, color: primaryColor),
                          hintText: 'UserName',
                          border: InputBorder.none
                      ),
                    )
                ),
                SizedBox(height: 20,),
                // Add button
                TextButton(
                    onPressed: ()=>{},

                    child:Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: primaryColor,
                      ),
                      child: Center(
                        child: Text("Looks Good", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    )
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}