import 'package:flutter/material.dart';

class ForYouList extends StatelessWidget {
   // const ForYouList({super.key});

  final Map<String, dynamic> list;
  const ForYouList({Key? key, required this.list}) : super(key: key);
  


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 125,
          width: 250,
          decoration:  BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(20),
          image:   const DecorationImage(
                        fit: BoxFit.cover,
                         image: AssetImage('assets/images/Image Banner 2.png'),
                        )
          ),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(list['firstText'],
              style: const TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(list['secondText'],
              style: const TextStyle(
                fontSize: 15,
              ),),
            ),
          ],
         ),
        
      ),
    );
  }
}
 