import 'package:flutter/material.dart';
import 'package:jobby_app/shared/theme.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavbar() {
      return BottomAppBar(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 20,
                color: selectedIndex == 0 ? kPrimaryColor : kGreyColor3,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_discover.png',
                  width: 26,
                  color: selectedIndex == 1 ? kPrimaryColor : kGreyColor3,
                ),
                label: 'Discover'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_favorite.png',
                  width: 26,
                  color: selectedIndex == 2 ? kPrimaryColor : kGreyColor3,
                ),
                label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_profile.png',
                  width: 26,
                  color: selectedIndex == 3 ? kPrimaryColor : kGreyColor3,
                ),
                label: 'Profile'),
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,
        ),
      );
    }

    Widget content() {
      switch (selectedIndex) {
        case 0:
          return HomePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: kBackgroundColor1,
      bottomNavigationBar: customBottomNavbar(),
      body: content(),
    );
  }
}
