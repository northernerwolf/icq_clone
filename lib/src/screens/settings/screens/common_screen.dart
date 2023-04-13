import 'package:flutter/material.dart';

class CommonScreen extends StatefulWidget {
  const CommonScreen({super.key});

  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
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
            'General',
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
                  left: 20, right: 10, top: 5, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Send by Enter',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 90,
                        child: const Text(
                          maxLines: 2,
                          'Send messages by pressing the Enter button',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      visualDensity: VisualDensity.compact,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = !isChecked;
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
                    'Auto download media files',
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
                    'Stickers by word',
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
                    'Smart answers',
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
                    'Stickers by emoji',
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
                    'Automatically replace emojis',
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
                    'Animate Stickers',
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
                  left: 20, right: 10, top: 5, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Show "In Chat"',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 90,
                        child: const Text(
                          maxLines: 2,
                          'Show who is in chat now',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      visualDensity: VisualDensity.compact,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = !isChecked;
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
                  left: 20, right: 10, top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'About',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 10, top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Terms of Service',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 10, top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Privacy Policy',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
