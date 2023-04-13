import 'package:flutter/material.dart';
import 'package:icq_chat_clone/src/screens/settings/screens/notfication_screen.dart';
import 'package:icq_chat_clone/src/screens/settings/screens/privacy_screen.dart';
import 'package:icq_chat_clone/src/screens/settings/screens/themes_screen.dart';

import '../../icq_icon.dart';
import '../chats/components/chating_screen.dart';
import 'screens/common_screen.dart';
import 'screens/report_problem.dart';
import 'screens/stickers_screen.dart';
import 'package:share/share.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                height: 78,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 15),
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 62,
                        width: 62,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/takyk.jpg",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Takyk tilsimaty',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 110,
                              child: const Text(
                                maxLines: 3,
                                '+993 65 000000',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 110,
                              child: const Text(
                                maxLines: 3,
                                'Add nickname',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
              color: const Color.fromARGB(255, 241, 240, 240),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChattingScreen()));
              },
              child: Container(
                height: 60,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 248, 242, 229),
                            shape: BoxShape.circle),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              IcqIcons.star,
                              size: 22,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Favorites',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
              color: const Color.fromARGB(255, 241, 240, 240),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const NotificationScreen()));
                          },
                          child: Row(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 248, 235, 234),
                                    shape: BoxShape.circle),
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Icon(
                                      IcqIcons.volume,
                                      size: 20,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Notifications',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const PrivacyScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 248, 235, 250),
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Icon(
                                        Icons.lock_outline,
                                        size: 20,
                                        color: Colors.purple,
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Privacy',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ThemesScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 235, 241, 247),
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Icon(
                                        Icons.draw_outlined,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Themes',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const StickersScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 248, 242, 232),
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Icon(
                                        Icons.pan_tool,
                                        size: 20,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Stickers',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const CommonScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 15),
                            child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 233, 248, 233),
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Icon(
                                        Icons.admin_panel_settings_outlined,
                                        size: 20,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Common',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
              color: const Color.fromARGB(255, 241, 240, 240),
            ),
            Container(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  Share.share('Check out this cool app I found!');
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 248, 235, 240),
                                shape: BoxShape.circle),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.person_add_alt_outlined,
                                  size: 22,
                                  color: Colors.pinkAccent,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Invite to ICQ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ReportProblem()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 237, 242, 252),
                                    shape: BoxShape.circle),
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.message_outlined,
                                      size: 22,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Report a problem',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
