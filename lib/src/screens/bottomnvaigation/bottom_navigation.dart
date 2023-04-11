import 'package:flutter/material.dart';
import 'package:icq_chat_clone/src/screens/calls/calls_screen.dart';
import 'package:icq_chat_clone/src/screens/chats/chats_screen.dart';
import 'package:icq_chat_clone/src/screens/contacts/constacts_screen.dart';
import 'package:icq_chat_clone/src/screens/settings/settings_screen.dart';

import 'bottom_nav_bar_button.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }

  List page = [
    const ContactsScreen(),
    const CallsScreen(),
    const ChatsScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(size: 28),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  selectedIndex == 0
                      ? 'Contacts'
                      : selectedIndex == 1
                          ? 'Calls'
                          : selectedIndex == 2
                              ? ''
                              : selectedIndex == 3
                                  ? 'Settings'
                                  : '',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 70,
              ),
              selectedIndex == 0
                  ? const Icon(
                      Icons.person_add,
                      size: 22,
                      color: Colors.blue,
                    )
                  : Container(
                      width: 22,
                    ),
            ],
          )),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Row(
          children: [
            Expanded(
                child: BottomNavbarButton(
                    icon: false,
                    index: 0,
                    selectedIndex: selectedIndex,
                    onTapp: () {
                      onTapp(0);
                    })),
            Expanded(
                child: BottomNavbarButton(
                    icon: false,
                    index: 1,
                    selectedIndex: selectedIndex,
                    onTapp: () {
                      onTapp(1);
                    })),
            Expanded(
                child: BottomNavbarButton(
                    icon: false,
                    index: 2,
                    selectedIndex: selectedIndex,
                    onTapp: () {
                      onTapp(2);
                    })),
            Expanded(
                child: BottomNavbarButton(
                    icon: false,
                    index: 3,
                    selectedIndex: selectedIndex,
                    onTapp: () {
                      onTapp(3);
                    })),
          ],
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: page[selectedIndex],
          ),
        ],
      ),
    );
  }

  void onTapp(int index) async {
    setState(() {
      selectedIndex = index;
    });
  }
}
