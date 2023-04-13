import 'package:flutter/material.dart';

class ThemesScreen extends StatefulWidget {
  const ThemesScreen({super.key});

  @override
  State<ThemesScreen> createState() => _ThemesScreenState();
}

class _ThemesScreenState extends State<ThemesScreen> {
  bool values = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blue),
        title: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width / 3 - 45),
          child: const Text(
            'Themes',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Themes',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 40,
                        child: const Text(
                          'Blue',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey[200],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Adaptation to the phone theme',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 65,
                        child: const Text(
                          'Auto switch to phone theme disabled',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      width: 25,
                      child: Switch(
                          value: values,
                          onChanged: ((value) {
                            setState(() {
                              values = value;
                            });
                          }))),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
