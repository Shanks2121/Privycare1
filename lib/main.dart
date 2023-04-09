import 'package:flutter/material.dart';
import 'package:flutter_htl/Screens/Login/postsign.dart';
import 'package:flutter_htl/Screens/Login/signup.dart';
import 'package:flutter_htl/Screens/Login/start.dart';
import 'package:flutter_htl/Screens/Login/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_htl/Resources/firebase_auth_methods.dart';
import 'package:flutter_htl/Screens/Home/navbar.dart';
import 'package:flutter_htl/Screens/Home/profile.dart';
import 'package:flutter_htl/Screens/Home/doc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<FirebaseAuthMethods>(
            create: (_) => FirebaseAuthMethods(FirebaseAuth.instance),
          ),
          StreamProvider(
            create: (context) => context.read<FirebaseAuthMethods>().authState,
            initialData: null,
          ),
        ],
        child:MaterialApp(
          title: 'PrivyCare',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              //primaryColor: kPrimaryColor,
              textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
          ),
          home: MyStart(),
        )
    );
  }
}


