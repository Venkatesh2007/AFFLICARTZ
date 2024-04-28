import 'package:flutter/material.dart';
import 'package:test1/AboutUsScreen.dart';
import 'package:test1/ContactUsPage.dart';
import 'package:test1/userprofile.dart';
import 'HomePage.dart';
import 'MyEarningsPage.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _bottomNavIndex = 0;
  int _sideDrawerIndex = 0;

  final List<Widget> _bottomNavPages = [
    HomePage(),
    MyEarningsPage(),
    userprofile(),
  ];

  final List<Widget> _sideDrawerPages = [
    HomePage(),
    MyEarningsPage(),
    userprofile(),
    AboutUsScreen(),
    ContactUsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(100, 246, 246, 246),
        elevation: 0.1, // Set elevation to 0 to prevent default shadow
        shadowColor: Colors.black.withOpacity(0.9),
        title: Row(
          children: [
            Image.asset('assets/images/Logo.png', height: 60),
            Spacer(), // Use Spacer to make the middle space responsive
            Icon(Icons.notifications_active_outlined),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
      drawer: Drawer(
        // backgroundColor: Colors.yellow,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            //   child: Text(
            //     'Menu',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 24,
            //     ),
            //   ),
            // ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                _navigateToSideDrawerPage(0);
              },
              selected: _sideDrawerIndex == 0, // Check if this item is active
              selectedTileColor: Color.fromARGB(223, 218, 215, 215),
              selectedColor: Colors.black, // Set the color for the active item
              // Set the color for the active item
            ),
            ListTile(
              leading: Icon(Icons.attach_money_rounded),
              title: Text('Money'),
              onTap: () {
                _navigateToSideDrawerPage(1);
              },
              selected: _sideDrawerIndex == 1,
              selectedTileColor: Color.fromARGB(223, 218, 215, 215),
              selectedColor: Colors.black, // Set the color for the active item
// Set the color for the active item
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                _navigateToSideDrawerPage(2);
              },
              selected: _sideDrawerIndex == 2,
              selectedTileColor: Color.fromARGB(223, 218, 215, 215),
              selectedColor: Colors.black, // Set the color for the active item
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('About Us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsScreen()),
                );
              },
              selectedTileColor: Color.fromARGB(223, 218, 215, 215),
              selectedColor: Colors.black, // Set the color for the active item
              // Set the color for the active item
            ),
            ListTile(
              leading: Icon(Icons.contact_page_outlined),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsPage()),
                );
              },
              selectedTileColor: Color.fromARGB(223, 218, 215, 215),
              selectedColor: Colors.black, // Set the color for the active item
              // Set the color for the active item
            ),
          ],
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 99, 112, 100),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: 'Earnings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        currentIndex: _bottomNavIndex,
        onTap: (index) {
          _navigateToBottomNavBarPage(index);
        },
      ),
    );
  }

  Widget _buildBody() {
    if (_bottomNavIndex >= 0 && _bottomNavIndex < _bottomNavPages.length) {
      return _bottomNavPages[_bottomNavIndex];
    } else {
      return Center(
        child: Text('Invalid Page Index $_bottomNavIndex'),
      );
    }
  }

  void _navigateToBottomNavBarPage(int index) {
    setState(() {
      if (index >= 0 && index < _bottomNavPages.length) {
        _bottomNavIndex = index;
        _sideDrawerIndex = index;
      }
    });
  }

  void _navigateToSideDrawerPage(int index) {
    setState(() {
      if (index >= 0 && index < _sideDrawerPages.length) {
        _bottomNavIndex = index;
        _sideDrawerIndex = index;
      }
    });
    Navigator.of(context).pop(); // Close the drawer
  }
}
