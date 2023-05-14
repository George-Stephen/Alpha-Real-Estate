import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:alpha_estates/Widgets/Dashboard_widgets/Favourites_widget.dart';
import 'package:alpha_estates/Widgets/Dashboard_widgets/Home_widget.dart';
import 'package:alpha_estates/Widgets/Dashboard_widgets/Profile_widget.dart';
import 'package:alpha_estates/Widgets/Dashboard_widgets/Search_widget.dart';
import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget{
  @override
  _dashboardState createState() => _dashboardState();
}


class _dashboardState extends State<DashboardPage>{
  static final List<Widget> _PageOptions = <Widget> [SearchWidget(),HomeWidget(),FavouritesWidget(),ProfileWidget()];
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: _PageOptions.elementAt(_selectedIndex),
            ),
            floatingActionButton: const SizedBox(
              height: kFABSize,
              width: kFABSize,
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: AnimatedBottomNavigationBar(
              barColor: kContentColorTheme,

              controller: FloatingBottomBarController(initialIndex: 1),
              bottomBarCenterModel:  BottomBarCenterModel(
                  centerBackgroundColor: kContentColorTheme,
                  centerIcon: const FloatingCenterButton(
                      child: Icon(Icons.location_pin,color: kBackgroundColor,),
                  ),
                  centerIconChild: [
                    FloatingCenterButtonChild(
                        child: const Icon(Icons.location_pin, color: kBackgroundColor,),
                        onTap: (){},
                    ),
                    FloatingCenterButtonChild(
                        child: const Icon(Icons.chat, color: kBackgroundColor,),
                        onTap: (){},
                    )
                  ]
              ),
              bottomBar:  [
                BottomBarItem(
                    icon: const Icon(Icons.search, size: kIconSize,color: kBackgroundColor,),
                    iconSelected: const Icon(Icons.search, size: kIconSize,color: kBarColor,),
                    dotColor: kBackgroundColor,
                    title: kSearch,
                    titleStyle: const TextStyle(
                        color: kBackgroundColor,
                        fontSize: 12
                    ),
                    onTap: (value){
                      setState(() {
                        _selectedIndex = value;
                      });
                    }
                ),
                BottomBarItem(
                    icon: const Icon(Icons.home, size: kIconSize,color: kBackgroundColor,),
                    iconSelected: const Icon(Icons.home, size: kIconSize,color: kBarColor,),
                    dotColor: kBackgroundColor,
                    title: kHome,
                    titleStyle: const TextStyle(
                      color: kBackgroundColor,
                      fontSize: 12
                    ),
                    onTap: (value){
                      setState(() {
                        _selectedIndex = value;
                      });
                    }
                ),
                BottomBarItem(
                  icon: const Icon(Icons.thumb_up, size: kIconSize,color: kBackgroundColor,),
                  iconSelected: const Icon(Icons.thumb_up, size: kIconSize,color: kBarColor,),
                  dotColor: kBackgroundColor,
                  title: kFavourites,
                  titleStyle: const TextStyle(
                      color: kBackgroundColor,
                      fontSize: 12
                  ),
                  onTap: (value){
                      setState(() {
                        _selectedIndex = value;
                      });
                    }
                ),
                BottomBarItem(
                  icon: const Icon(Icons.person, size: kIconSize,color: kBackgroundColor,),
                  iconSelected: const Icon(Icons.person, size: kIconSize,color: kBarColor,),
                  dotColor: kBackgroundColor,
                  title: kProfile,
                  titleStyle: const TextStyle(
                      color: kBackgroundColor,
                      fontSize: 12
                  ),
                  onTap: (value){
                      setState(() {
                        _selectedIndex = value;
                      });
                    }
                ),
              ],

            ),
          ),
        ],
      );
  }
}