import 'package:flutter/material.dart';

class SpecialForYou extends StatelessWidget {
  const SpecialForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 500,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const  [
              Text('Special for you',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,       
              )
              ),
    
              Text('See More',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              )
              )
          ],
        ),
    );
  }
}