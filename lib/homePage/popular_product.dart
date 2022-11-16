import 'package:flutter/material.dart';

class PopularProduct extends StatelessWidget {
  final Map<String, dynamic> list;
  const PopularProduct({Key? key, required this.list}) : super(key: key); 


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 150,
        decoration:  BoxDecoration(
             color: Colors.pink[50],
             borderRadius: BorderRadius.circular(30),
             image: const  DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/ps4_console_white_1.png"),
                      )      ),
      ),
    );
  }
}