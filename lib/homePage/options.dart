import 'package:flutter/material.dart';
import 'package:pasal/resources/assets_manager.dart';

import 'home_feature_icon.dart';


class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 102,
       width: 500,
       color: Colors.white,
       child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                   Column(
                     children: [
                       Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                           color: Colors.orange[100],
                           borderRadius: BorderRadius.circular(20),
                        // image: AssetsImage('assets/icons/Flash Icon.svg'),
                        ),
                       
                       ),
                       const Text("Flash \n Deal"),
                     ],
                   ),

                    Column(
                     children: [
                       Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                           color: Colors.orange[100],
                           borderRadius: BorderRadius.circular(20),
                        ),
                       
                       ),
                       const Text("Bill"),
                     ],
                   ),

                    Column(
                     children: [
                       Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                           color: Colors.orange[100],
                           borderRadius: BorderRadius.circular(20),
                        ),
                       
                       ),
                       const Text("Game"),
                     ],
                   ),

                    Column(
                     children: [
                       Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                           color: Colors.orange[100],
                           borderRadius: BorderRadius.circular(20),
                        ),
                       
                       ),
                       const Text("Daily Gift"),
                     ],
                   ),

                    Column(
                     children: [
                       Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                           color: Colors.orange[100],
                           borderRadius: BorderRadius.circular(20),
                        ),
                       
                       ),
                       const Text("More"),
                     ],
                   ),

                  
            ],
       ),
    );

  }
}