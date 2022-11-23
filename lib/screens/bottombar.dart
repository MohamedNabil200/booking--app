import 'package:bookticket/screens/home_screen.dart';
import 'package:bookticket/screens/profile_screen.dart';
import 'package:bookticket/screens/search_screen.dart';
import 'package:bookticket/screens/ticket_screen.dart';
import 'package:bookticket/widgets/ticket_tabs.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex=0;
  static final List<Widget>_widgetOptions=<Widget>[
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),




  ];
  void _onItemTapped(int index){
    setState(() {
      selectedIndex=index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: _widgetOptions[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey,
        unselectedItemColor: const Color(0xFF526480),
        items: [
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons
            .ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            label: "Home"),
        BottomNavigationBarItem(icon:Icon(FluentSystemIcons
            .ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_regular),label:
            "Search"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons
            .ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            label:"tickets"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons
            .ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_regular),label:
            "profile"),


      ],),
    );
  }
}
