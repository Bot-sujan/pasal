import 'package:flutter/material.dart';

class PopularProductWritten extends StatelessWidget {
  const PopularProductWritten({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 500,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const  [
              Text('Popular Products',
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