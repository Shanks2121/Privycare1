import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_htl/constant.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _titles = [
    'Title 1',
    'Title 2',
    'Title 3',
    'Title 4',
  ];

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
          child: Column(
            children: [
              SizedBox(height: 30,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                      child: Text(
                       'PrivyCare',
                      style: TextStyle(
                     fontSize: 50,
                     fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),
                ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'How are you feeling?',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: primaryColor,
                      ),
                      child: Row(
                        children:[
                          Icon(Icons.favorite_outline, color: Colors.white),
                          SizedBox(width: 10),
                          TextButton(
                          onPressed: ()=>{},
                          child: Center(
                            child: Text(
                              "Check In",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),],
                      ),
                    ),
                  ],
                ),
              ),






              SizedBox(height: 80),
              CarouselSlider(
                items: _titles.map((title) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
