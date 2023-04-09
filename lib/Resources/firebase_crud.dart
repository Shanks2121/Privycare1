import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


final firestoreInstance = FirebaseFirestore.instance;
final FirebaseAuth auth = FirebaseAuth.instance;
final authInstance = FirebaseAuth.instance;
final User? user = auth.currentUser;
final String userId = user!.uid;


void createRecord(String name, String email, String phone,) async {
  await firestoreInstance.collection("user").add({
    'email': email,
    'name' : name,
    'phone': phone,
    'userId': userId,
  });
}

void createPersonalRecord(String gender, String age, String username,) async {
  await firestoreInstance.collection("user").add({
    'gender': gender,
    'age' : age,
    'username': username,
    'userId': userId,
  });
}

Future<Map?> getUserData() async {
  String? userEmail = authInstance.currentUser?.email;

  QuerySnapshot querySnapshot = await firestoreInstance
      .collection('user')
      .where('email', isEqualTo: userEmail)
      .get();
  if (querySnapshot.docs.length > 0) {
    DocumentSnapshot documentSnapshot = querySnapshot.docs[0];
    Map userData = documentSnapshot.data() as Map;

    return userData;
  } else {
    return null;
  }
}

Future<Map?> getQuesData() async {

  QuerySnapshot querySnapshot = await firestoreInstance
      .collection('discussion_list')
      .get();
  if (querySnapshot.docs.length > 0) {
    DocumentSnapshot documentSnapshot = querySnapshot.docs[0];
    Map userData = documentSnapshot.data() as Map;

    return userData;
  } else {
    return null;
  }
}