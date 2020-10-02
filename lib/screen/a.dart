// import 'package:flutter/material.dart';
// import './favorite_screen.dart' as favorite;
// import './home_screen.dart' as home;
// import './livenews_screen.dart' as livenews;
// import './profile_screen.dart' as profile;
// import './sidemenu_screen.dart';

// class ViewScreen extends StatefulWidget {
//   ViewScreen({Key key, this.title}) : super(key: key);

//   final String title;
//   @override
//   _ViewScreenState createState() => _ViewScreenState();
// }

// class _ViewScreenState extends State<ViewScreen>
//     with SingleTickerProviderStateMixin {
//   String titles = "FAMOUS";
//   int selectedIndex = 0;
//   String text;

//   void updateTabSelection(int index, String buttonText) {
//     setState(() {
//       selectedIndex = index;
//       text = buttonText;
//     });
//   }

//   TabController controller;
//   IconData ttd = Icons.search;

//   @override
//   void initState() {
//     controller = new TabController(vsync: this, length: 4);
//     controller.addListener(_handleTabSelection);
//     super.initState();
//   }

//   void _handleTabSelection() {
//     setState(() {});
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // drawer: Theme(
//         // data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
//         // child: NavDrawer()
//         // ),
//         key: _scaffoldKey,
//         drawer: NavDrawer(),
//         bottomNavigationBar: new Material(
//           color: Colors.white,
//           child: new TabBar(
//             controller: controller,
//             indicatorColor: Colors.black,
//             tabs: <Widget>[
//               new Tab(
//                 icon: new Icon(Icons.home,
//                     color: controller.index == 0
//                         ? Colors.purple
//                         : Colors.grey[400]),
//               ),
//               new Tab(
//                 icon: new Icon(Icons.play_circle_outline,
//                     color: controller.index == 1
//                         ? Colors.purple
//                         : Colors.grey[400]),
//               ),
//               new Tab(
//                 icon: new Icon(Icons.favorite,
//                     color: controller.index == 2
//                         ? Colors.purple
//                         : Colors.grey[400]),
//               ),
//               new Tab(
//                 icon: new Icon(Icons.person,
//                     color: controller.index == 3
//                         ? Colors.purple
//                         : Colors.grey[400]),
//               ),
//             ],
//           ),
//         ),
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0.0,
//           leading: new IconButton(
//             color: Colors.black,
//             icon: Icon(Icons.menu),
//             onPressed: () => _scaffoldKey.currentState.openDrawer(),
//           ),
//           title: Center(
//             child: new Text(
//               controller.index == 0
//                   ? "Home"
//                   : controller.index == 1
//                       ? "Live News"
//                       : controller.index == 2
//                           ? "Fovorites"
//                           : controller.index == 3 ? "Profile" : titles,
//               style: new TextStyle(color: Colors.black),
//             ),
//           ),
//           actions: <Widget>[
//             new IconButton(
//               color: Colors.black,
//               icon:
//                   Icon(controller.index == 3 ? Icons.notifications_none : ttd),
//               onPressed: () {},
//             ),
//           ],
//         ),
//         body: new TabBarView(
//           controller: controller,
//           children: <Widget>[
//             new home.HomeScreen(),
//             new livenews.LiveNewsScreen(),
//             new favorite.FavoriteScreen(),
//             new profile.ProfileScreen()
//           ],
//         ));
//   }
// }
