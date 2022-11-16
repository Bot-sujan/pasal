import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:pasal/homePage/top_container.dart';
import 'package:pasal/resources/style_constants.dart';

import '../resources/assets_manager.dart';
import '../resources/size_config.dart';
import 'home_feature_icon.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({super.key});

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white38,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(40),
                width: getProportionateScreenWidth(250),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    border: outlineInputBorder(),
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search Product",
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const HomeFeatureIcon(
                    svgIcon: ImageAssets.shopIcon,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const HomeFeatureIcon(
                    svgIcon: ImageAssets.bellIcon,
                  )),
            ],
          )),

      body: 
      const  Top(),
 
 
        bottomNavigationBar: BottomNavigationBar(

        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), 
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          label: "Home"),
          
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_heart_regular), 
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          label: "Search"),
          
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_text_regular), 
          activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          label: "Ticket"),
          
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), 
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          label: "Profile"),
        ],
      ),
    );
  }
}