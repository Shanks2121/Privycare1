import 'package:flutter/material.dart';
import 'package:flutter_htl/constant.dart';
import 'package:flutter_htl/Resources/firebase_crud.dart';
class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  _DoctorState createState() => _DoctorState();
}
class _DoctorState extends State<Doctor> {
  Map<dynamic, dynamic> userData = {};
  @override
  void initState() {
    super.initState();
    getQuesData().then((data) {
      setState(() {
        userData = data!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
     return Scaffold(
       body:Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("assets/images/11.png"),
             fit: BoxFit.cover,
           ),
         ),
         child: Column(
           children: [
             Container(
               height: 130,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   bottomRight: Radius.circular(50),
                 ),
                 color: primaryColor,
               ),
               child: Stack(
                 children: [
                   Positioned(
                     top: 40,
                     left: 0,
                     child: Container(
                       height: 50,
                       width: 150,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(
                           topRight: Radius.circular(50),
                           bottomRight: Radius.circular(50),
                         )
                       ),
                     ),
                   ),
                   Positioned(
                       top: 40,
                       left: 20,
                       child: Text('Talk',style: TextStyle(fontSize: 40,color: Colors.black),)),
                 ],
               ),
             ),
             SizedBox(height: height*0.05,),

             Expanded(

                 child: MediaQuery.removePadding(context: context,
                   removeTop: true,
                   child: ListView(
               children: [
                 Container(
                   height:230,
                   margin: const EdgeInsets.only(bottom: 10,top: 25,left:20,right: 20),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15.0),
                     boxShadow:[
                       BoxShadow(
                         color:Colors.grey.withOpacity(0.3),
                         offset: new Offset(-10.0, 10.0),
                         blurRadius: 20.0,
                         spreadRadius: 4.0,
                       )],
                   ),
                   child: Column(
                     children: [
                       SizedBox(height: 20,),
                       Text(
                         'Daily Poll',
                         textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                       ),
                       SizedBox(height: 20,),
                       Text(
                         'How are you feeling today?',
                         textAlign: TextAlign.center,
                         style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                       ),
                       SizedBox(height: 40,),
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
                               child: Text("Take this poll", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                             ),
                           )
                       ),
                     ],
                   ),
                 ),
                   Container(
                     margin: const EdgeInsets.only(bottom: 10,top: 25),
                     height: 200,
                     padding: const EdgeInsets.only(left:20,right: 20,bottom: 20),
                     child: Container(
                       decoration: BoxDecoration(
                         color: primaryColor,
                         borderRadius: const BorderRadius.only(
                           bottomLeft: Radius.circular(80.0),
                         ),
                         boxShadow: [
                           BoxShadow(
                             color: Color(0xFF363f93).withOpacity(0.3),
                             offset: new Offset(-10.0, 0.0),
                             blurRadius: 20.0,
                             spreadRadius: 4.0
                           )
                         ]
                       ),
                       padding: const EdgeInsets.only(
                         left: 32,
                         top: 50.0,
                         bottom: 50,
                       ),
                       child: Column(
                         //crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             '${userData['title']}',
                             textAlign: TextAlign.center,
                             style: TextStyle(color: Colors.white,fontSize: 12),
                           ),
                           SizedBox(height: 2,),
                           Text(
                             '${userData['description']}',
                             style: TextStyle(color: Colors.white,fontSize: 18),
                           ),
                         ],
                       ),
                     ),
                   ),
                   Container(
                     margin: const EdgeInsets.only(bottom: 10,top: 25),
                     height: 200,
                     padding: const EdgeInsets.only(left:20,right: 20,bottom: 20),
                     child: Container(
                       decoration: BoxDecoration(
                           color: primaryColor,
                           borderRadius: const BorderRadius.only(
                             topRight: Radius.circular(80.0),
                           ),
                           boxShadow: [
                             BoxShadow(
                                 color: Color(0xFF363f93).withOpacity(0.3),
                                 offset: new Offset(-10.0, 0.0),
                                 blurRadius: 20.0,
                                 spreadRadius: 4.0
                             )
                           ]
                       ),
                       padding: const EdgeInsets.only(
                         left: 32,
                         top: 50.0,
                         bottom: 50,
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "The Best",
                             style: TextStyle(color: Colors.white,fontSize: 12),
                           ),
                           SizedBox(height: 2,),
                           Text(
                             "of yur Life starts here.",
                             style: TextStyle(color: Colors.white,fontSize: 18),
                           ),
                         ],
                       ),
                     ),
                   ),
                 Container(
                   margin: const EdgeInsets.only(bottom: 10,top: 25),
                   height: 200,
                   padding: const EdgeInsets.only(left:20,right: 20,bottom: 20),
                   child: Container(
                     decoration: BoxDecoration(
                         color: primaryColor,
                         borderRadius: const BorderRadius.only(
                           bottomLeft: Radius.circular(80.0),
                         ),
                         boxShadow: [
                           BoxShadow(
                               color: Color(0xFF363f93).withOpacity(0.3),
                               offset: new Offset(-10.0, 0.0),
                               blurRadius: 20.0,
                               spreadRadius: 4.0
                           )
                         ]
                     ),
                     padding: const EdgeInsets.only(
                       left: 32,
                       top: 50.0,
                       bottom: 50,
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           userData['title'],
                           style: TextStyle(color: Colors.white,fontSize: 12),
                         ),
                         SizedBox(height: 2,),
                         Text(
                           userData['description'],
                           style: TextStyle(color: Colors.white,fontSize: 18),
                         ),
                       ],
                     ),
                   ),
                 ),
                 Container(
                   margin: const EdgeInsets.only(bottom: 10,top: 25),
                   height: 200,
                   padding: const EdgeInsets.only(left:20,right: 20,bottom: 20),
                   child: Container(
                     decoration: BoxDecoration(
                         color: primaryColor,
                         borderRadius: const BorderRadius.only(
                           topRight: Radius.circular(80.0),
                         ),
                         boxShadow: [
                           BoxShadow(
                               color: Color(0xFF363f93).withOpacity(0.3),
                               offset: new Offset(-10.0, 0.0),
                               blurRadius: 20.0,
                               spreadRadius: 4.0
                           )
                         ]
                     ),
                     padding: const EdgeInsets.only(
                       left: 32,
                       top: 50.0,
                       bottom: 50,
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           "The Best",
                           style: TextStyle(color: Colors.white,fontSize: 12),
                         ),
                         SizedBox(height: 2,),
                         Text(
                           "of yur Life starts here.",
                           style: TextStyle(color: Colors.white,fontSize: 18),
                         ),
                       ],
                     ),
                   ),
                 ),
                 Container(
                   margin: const EdgeInsets.only(bottom: 10,top: 25),
                   height: 200,
                   padding: const EdgeInsets.only(left:20,right: 20,bottom: 20),
                   child: Container(
                     decoration: BoxDecoration(
                         color: primaryColor,
                         borderRadius: const BorderRadius.only(
                           bottomLeft: Radius.circular(80.0),
                         ),
                         boxShadow: [
                           BoxShadow(
                               color: Color(0xFF363f93).withOpacity(0.3),
                               offset: new Offset(-10.0, 0.0),
                               blurRadius: 20.0,
                               spreadRadius: 4.0
                           )
                         ]
                     ),
                     padding: const EdgeInsets.only(
                       left: 32,
                       top: 50.0,
                       bottom: 50,
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           "Almost every man has experienced an unpredicatable.....",
                           style: TextStyle(color: Colors.white,fontSize: 12),
                         ),
                         SizedBox(height: 2,),
                         Text(
                           "of Your Life Starts Here.",
                           style: TextStyle(color: Colors.white,fontSize: 18),
                         ),
                       ],
                     ),
                   ),
                 ),
                 Container(
                   margin: const EdgeInsets.only(bottom: 10,top: 25),
                   height: 200,
                   padding: const EdgeInsets.only(left:20,right: 20,bottom: 20),
                   child: Container(
                     decoration: BoxDecoration(
                         color: primaryColor,
                         borderRadius: const BorderRadius.only(
                           topRight: Radius.circular(80.0),
                         ),
                         boxShadow: [
                           BoxShadow(
                               color: Color(0xFF363f93).withOpacity(0.3),
                               offset: new Offset(-10.0, 0.0),
                               blurRadius: 20.0,
                               spreadRadius: 4.0
                           )
                         ]
                     ),
                     padding: const EdgeInsets.only(
                       left: 32,
                       top: 50.0,
                       bottom: 50,
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           "The Best",
                           style: TextStyle(color: Colors.white,fontSize: 12),
                         ),
                         SizedBox(height: 2,),
                         Text(
                           "of yur Life starts here.",
                           style: TextStyle(color: Colors.white,fontSize: 18),
                         ),
                       ],
                     ),
                   ),
                 ),



               ],
             ),
                 )
             )
           ],
         ),
       ) ,
     );
  }

}