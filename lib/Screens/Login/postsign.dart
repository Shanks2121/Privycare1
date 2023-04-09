import 'package:flutter/material.dart';

//import 'package:flutter_htl/Screens/Login/login.dart';
//import 'package:flutter_htl/constant.dart';
//import 'package:flutter_htl/Resources/firebase_crud.dart';
const primaryColor = const Color(0xFF3990A3);
String age = '';
String gender = '';
final TextEditingController userController = TextEditingController();

class pSign extends StatefulWidget {
  @override
  State<pSign> createState() => _pSignState();
}

class _pSignState extends State<pSign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/11.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 100,
                  right: -50,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: primaryColor.withAlpha(50),
                    ),
                  )),
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
                  )),
              Positioned(
                bottom: 60,
                left: 50,
                right: 50,
                child: Column(
                  children: [
                    Container(
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
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "PrivyCare cares for your data!!!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Add button
                    SizedBox(
                      height: 20,
                    ),

                    Text(
                      "We will never sell your information.\nIt will always remain private.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),

                    SizedBox(
                      height: 40,
                    ),

                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Gender()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: primaryColor,
                          ),
                          child: Center(
                            child: Text(
                              "Tell us about Yourself",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Gender extends StatelessWidget {
  const Gender({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/11.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 50, bottom: 10),
              child: Text(
                'Hello',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 30),
              child: Text(
                'I Am....',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(30.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 1.0,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor.withAlpha(85),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onPressed: () {
                      if (index == 0) {
                        gender = 'Male';
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Age()),
                        );
                      } else if (index == 1) {
                        gender = 'Female';
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Age()),
                        );
                      } else if (index == 2) {
                        gender = 'Trans-Masculine';
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Age()),
                        );
                      } else if (index == 3) {
                        gender = 'Trans-Feminine';
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Age()),
                        );
                      }
                    },
                    child: Center(
                      child: Text(
                        index == 0
                            ? 'Male'
                            : index == 1
                                ? 'Female'
                                : index == 2
                                    ? 'Trans-Masculine'
                                    : 'Trans-Feminine',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Age extends StatelessWidget {
  const Age({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/11.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10, top: 30),
              child: Text(
                'Hello',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'I Am....$gender',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(20.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 1.0,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor.withAlpha(85),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onPressed: () {
                      if (index == 0) {
                        age = '<18';
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => user()),
                        );
                      } else if (index == 1) {
                        age = '18-25';
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => user()),
                        );
                      } else if (index == 2) {
                        age = '26-40';
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => user()),
                        );
                      } else if (index == 3) {
                        age = '41-60';
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => user()),
                        );
                      } else if (index == 4) {
                        age = '61-80';
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => user()),
                        );
                      } else if (index == 5) {
                        age = '>80';
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => user()),
                        );
                      }
                    },
                    child: Center(
                      child: Text(
                        index == 0
                            ? '<18'
                            : index == 1
                                ? '18-25'
                                : index == 2
                                    ? '26-40'
                                    : index == 3
                                        ? '41-60'
                                        : index == 4
                                            ? '61-80'
                                            : '>80',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class user extends StatelessWidget {
  const user({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/11.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, bottom: 10),
              child: Text(
                'Hello',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                'I Am....$gender',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                'My age is $age',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
           
            Container(
              width: 800,
              height: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Material(
                    child: Container(
                      color: Color(0xFFE0F9FF),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: primaryColor.withAlpha(50)),
                          child: TextField(
                            controller: userController,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                                icon: Icon(Icons.person, color: primaryColor),
                                hintText: 'Choose a username.',
                                border: InputBorder.none),
                          )),
                    ),
                  ),
                
                  SizedBox(
                    height: 15,
                  )
                  ,
                  TextButton(
                      onPressed: () {
                        sayHello(context);
                      },
                      child: Container(
                        height: 55,
                        width: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: primaryColor,
                        ),
                        child: Center(
                          child: Text(
                            "Looks Good",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                ],
              ),
              //])
            )
          ],
        ),
      ),
    );
  }
}

void sayHello(BuildContext context) {
  /* String username = userController as String;
  //createPersonalRecord(gender, age, username);
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyLogin()),
  );*/
}
