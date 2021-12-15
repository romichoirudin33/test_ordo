import 'package:flutter/material.dart';
import 'package:test_ordo/app/utils/colors.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.assignment,
            color: secondaryText,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.swap_horiz,
            color: secondaryText,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: selectedNavbar,
          ),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.assessment,
            color: secondaryText,
          ),
          label: 'School',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
            color: secondaryText,
          ),
          label: 'School',
        ),
      ],
      currentIndex: 2,
      selectedItemColor: selectedNavbar,
    );
  }
}
