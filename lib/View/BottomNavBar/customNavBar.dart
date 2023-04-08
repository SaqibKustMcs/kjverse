import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../Collection/collection.dart';
import '../OnlineBibble/OnlineBibble.dart';
import '../Profile/profile.dart';
import '../Today/homeScreen.dart';

class bottomNavigationBar extends StatefulWidget {
  bottomNavigationBar() : super();

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      OnlineBibble(),
      Collection(),
      Collection(),
      Profile(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.business_center_rounded),
        title: ("Today"),
        activeColorPrimary: Color(0xffFFB301),
        inactiveColorPrimary:  Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.search),
        title: ("Online Bibble"),
        activeColorPrimary: Color(0xffFFB301),
        inactiveColorPrimary:  Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.lock,
          color: Colors.white,
        ),
        title: ("."),
        textStyle: TextStyle(color: Colors.black),

        activeColorPrimary: CupertinoColors.activeOrange,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.collections),
        title: ("Collection"),
        activeColorPrimary: Color(0xffFFB301),
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        title: ("Profile"),
        activeColorPrimary: Color(0xffFFB301),
        inactiveColorPrimary:  Colors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.black,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.black12,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:kjverse/View/OnlineBibble/OnlineBibble.dart';
// import 'package:kjverse/View/Today/homeScreen.dart';
// import 'package:kjverse/View/Today/memoryList.dart';
// import 'package:kjverse/View/Today/todayScreen.dart';
//
// import '../Collection/collection.dart';
// import '../Profile/profile.dart';
//
// class bottomNavigationBar extends StatefulWidget {
//   const bottomNavigationBar({Key,key}) : super(key: key);
//   // final RouteLogin=true;
//   @override
//   bottomNavigationBarState createState() => bottomNavigationBarState();
// }
//
// class bottomNavigationBarState extends State<bottomNavigationBar> {
//
//   @override
//   void initState() {
//     super.initState();
//   }
//   var smallHeading = 15.0;
//   var largeHeading = 20.0;
//   static var selectedIndex=0;
//   static  List<Widget> _widgetOptions = <Widget>[
//     // TodayScreen(),
//     // MemoryList(),
//     HomeScreen(),
//
//     OnlineBibble(),
//     Collection(),
//     Profile(),
//
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//
//         backgroundColor: Colors.yellowAccent,
//         showUnselectedLabels: true,
//         showSelectedLabels: true,
//         unselectedItemColor: Colors.grey,
//         selectedItemColor:  Color(0xff0B3B8F),
//         onTap: _onTap,
//         currentIndex: selectedIndex,
//         // selectedLabelStyle: GoogleFonts.poppins(fontSize: 10),
//
//         items: const <BottomNavigationBarItem> [
//           // BottomNavigationBarItem(icon: Icon(Icons.home_filled,size:20),label: "Today",),
//           BottomNavigationBarItem(icon: Icon(Icons.home_filled,size:20),label: "Today",),
//
//           BottomNavigationBarItem(icon: Icon(Icons.home_filled,size:20),label: "Online Bibble"),
//
//           BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined,size:20),label: "Collection"),
//           BottomNavigationBarItem(icon:Icon(Icons.add_business,size:20,),label:"Profile"),
//
//         ],
//
//
//       ),
//
//       body: _widgetOptions.elementAt(selectedIndex),
//     );
//   }
//   void _onTap(int index)
//   {
//     selectedIndex = index;
//     setState(() {
//     });
//   }
// }
