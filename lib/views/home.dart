import 'package:flutter/material.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:flutter_social/views/tabs/chats.dart';
import 'package:flutter_social/views/tabs/feeds.dart';
import 'package:flutter_social/views/tabs/notifications.dart';
import 'package:flutter_social/views/tabs/profile.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    FeedsPage(),
    ChatsPage(),
    NotificationsPage(),
    ProfilePage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final bottomNavBar = BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey.withOpacity(0.6),
      elevation: 0.0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.rss_feed),
          label: 'Feed',
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.comments),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.bell),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.user),
          label: 'Profile',
        )
      ],
    );

    return Scaffold(
      bottomNavigationBar: bottomNavBar,
      body: _pages[_currentIndex],
    );
  }
}
