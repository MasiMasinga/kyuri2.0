import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:kyuri/screens/chatbot/chatscreen.dart';
import 'package:kyuri/screens/chatbot/body.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new HomePageScreen(),
    );
  }
}

// ignore: must_be_immutable
class HomePageScreen extends StatelessWidget {
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(child: new Text("KYURI")),
      ),
      drawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(
                'Nolo Phiri',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              accountEmail: new Text(
                'nolophiri@kyuri.com',
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black,
                child: new Text("NP"),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            new ListTile(
              trailing: new Icon(Icons.home),
              title: new Text("Home"),
              onTap: () {},
            ),
            new ListTile(
              title: new Text("Profile"),
              trailing: new Icon(Icons.person_rounded),
              onTap: () {},
            ),
            new Divider(),
            //Section Line
            new Divider(),
            new ListTile(
              title: new Text("Logout"),
              trailing: new Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),

      // Menu
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            GestureDetector(
              child: MyMenu(
                title: 'KYURI Cab',
                icon: Icons.local_taxi,
                color: Colors.yellow,
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: MyMenu(
                title: 'Tracker',
                icon: Icons.radio_button_checked,
                color: Colors.red,
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: MyMenu(
                title: 'KYURI Bot',
                icon: Icons.chat,
                color: Colors.pink,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
            ),
            GestureDetector(
              child: MyMenu(
                title: 'KYURI Shop',
                icon: Icons.shopping_cart,
                color: Colors.blue,
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: MyMenu(
                title: 'Support',
                icon: Icons.help,
                color: Colors.green,
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: MyMenu(
                title: 'About',
                icon: Icons.info,
                color: Colors.red,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.account_circle,
              title: "Profile",
              onclick: () {
                final FancyBottomNavigationState fState =
                    bottomNavigationKey.currentState;
                fState.setPage(2);
              }),
          TabData(iconData: Icons.search, title: "Search", onclick: () {}),
          TabData(iconData: Icons.shopping_cart, title: "Basket")
        ],
        initialSelection: 1,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {},
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.color});

  final String title;
  final IconData icon;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 70.0,
                color: color,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
