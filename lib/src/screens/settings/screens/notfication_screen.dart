import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool values = false;
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
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
            'Notification',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Notification',
                        style: TextStyle(fontSize: 16),
                      )
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
            Container(
              height: 1,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Sound theme',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Chats',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 10, top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sounds',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      visualDensity: VisualDensity.compact,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = !isChecked;
                          //state.didChange(value);
                        });
                      }),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 10, top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Vibration',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      visualDensity: VisualDensity.compact,
                      value: isChecked2,
                      onChanged: (value) {
                        setState(() {
                          isChecked2 = !isChecked2;
                          //state.didChange(value);
                        });
                      }),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 10, top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Light indication',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      visualDensity: VisualDensity.compact,
                      value: isChecked3,
                      onChanged: (value) {
                        setState(() {
                          isChecked3 = !isChecked3;
                          //state.didChange(value);
                        });
                      }),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 10, top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Heads-up notifications',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      visualDensity: VisualDensity.compact,
                      value: isChecked3,
                      onChanged: (value) {
                        setState(() {
                          isChecked3 = !isChecked3;
                          //state.didChange(value);
                        });
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Channels and group chats',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 10, top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sounds',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      visualDensity: VisualDensity.compact,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = !isChecked;
                          //state.didChange(value);
                        });
                      }),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 10, top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Vibration',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      visualDensity: VisualDensity.compact,
                      value: isChecked2,
                      onChanged: (value) {
                        setState(() {
                          isChecked2 = !isChecked2;
                          //state.didChange(value);
                        });
                      }),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 10, top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Light indication',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      visualDensity: VisualDensity.compact,
                      value: isChecked3,
                      onChanged: (value) {
                        setState(() {
                          isChecked3 = !isChecked3;
                          //state.didChange(value);
                        });
                      }),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 10, top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Heads-up notifications',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      visualDensity: VisualDensity.compact,
                      value: isChecked3,
                      onChanged: (value) {
                        setState(() {
                          isChecked3 = !isChecked3;
                          //state.didChange(value);
                        });
                      }),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
