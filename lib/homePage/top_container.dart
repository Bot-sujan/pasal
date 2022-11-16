import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:pasal/homePage/popular_product.dart';
import 'package:pasal/homePage/popular_products_list.dart';
import 'package:pasal/homePage/special_for_you.dart';
import 'package:pasal/model/products.dart';
import 'package:pasal/resources/size_config.dart';
import 'package:pasal/widgets/product_cart.dart';

import 'for_you_item.dart';
import 'for_you_list.dart';
import 'options.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(10),
            // Row(
            //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       height: 40,
            //       width: 250,
            //       margin: const EdgeInsets.symmetric(vertical: 30),
            //       padding:
            //           const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            //       decoration: BoxDecoration(
            //         color: Colors.pink[50],
            //         borderRadius: BorderRadius.circular(20),
                    
            //       ),
            //     ),
    
            //     const Gap(10),
    
            //     Container(
            //       padding: const EdgeInsets.all(20),
            //       decoration:  BoxDecoration(
            //           color: Colors.pink[50], shape: BoxShape.circle,
            //             image:  const DecorationImage(
            //         fit: BoxFit.cover,
            //         image: AssetImage(ImageAssets.cartIcon),
            //         )          
            //           ), 
                     
            //     ),
    
            //     const Gap(10),
    
            //     Container(
            //       padding: const EdgeInsets.all(20),
            //       decoration: BoxDecoration(
            //           color: Colors.pink.shade50, shape: BoxShape.circle),

            //     )
            //   ],
            // ),
    
           const Gap(20),
    
           Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 101,
            width: 400,
            decoration:  BoxDecoration(
            color: Colors.indigo[600],
            borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
              Text('A Summer Surprise',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
    
              )),
              Text('Cashback 20%',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
    
              ),),
    
            ],
            
            )
           ),
    
           const Gap(20),
    
           const Options(),
    
    
          const Gap(10),
    
           const SpecialForYou(),
    
           const Gap(20),
    
    
    
            SingleChildScrollView (
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
             children: forYouMap.map((otherList) => ForYouList(list: otherList)).toList(),
              
              ),
          
            ),
    
            const Gap(20),
    
            const PopularProductWritten(),
                        
                        
            const Gap(20),
    
    
             SingleChildScrollView (
            child: SizedBox(
              height: getProportionateScreenHeight(300),
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: demoProducts.length,
              itemBuilder: (context, index) {
                if (demoProducts[index].isPopular) {
                  return ProductCard(product: demoProducts[index]);
                }
                return const SizedBox.shrink();
              }
            ),
            )
            )
 
          ],
        ),
      ),
    ]);
  }
}








// import 'package:flutter/material.dart';
// import 'package:pasal/presentation/home_screen/home_features.dart';
// import 'package:pasal/presentation/home_screen/popular_products.dart';
// import 'package:pasal/presentation/home_screen/special_for_you.dart';
// import 'package:pasal/presentation/resources/assets_manager.dart';
// import 'package:pasal/presentation/resources/size_config.dart';
// import 'package:pasal/presentation/resources/strings_manager.dart';
// import 'package:pasal/presentation/widgets/banner.dart';
// import 'package:pasal/presentation/widgets/bottom_nav.dart';

// import 'package:pasal/presentation/widgets/home_feature_icon.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.white38,
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: getProportionateScreenHeight(40),
//                 width: getProportionateScreenWidth(250),
//                 child: TextField(
//                   onChanged: (value) {},
//                   decoration: const InputDecoration(
//                     prefixIcon: Icon(Icons.search),
//                     hintText: AppStrings.searchBarHintText,
//                   ),
//                 ),
//               ),
//               IconButton(
//                   onPressed: () {},
//                   icon: const HomeFeatureIcon(
//                     svgIcon: ImageAssets.shopIcon,
//                   )),
//               IconButton(
//                   onPressed: () {},
//                   icon: const HomeFeatureIcon(
//                     svgIcon: ImageAssets.bellIcon,
//                   )),
//             ],
//           )),
//       body: SingleChildScrollView(
//         child: Column(children: const [
//           BannerScreen(),
//           SizedBox(
//             height: 12,
//           ),
//           HomeFeatures(),
//           SpecialForYou(),
//           PopularProducts(),
//         ]),
//       ),
//       bottomNavigationBar: BottomNav(),
//     );
//   }
// }