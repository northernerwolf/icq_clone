import 'package:flutter/material.dart';

class ReportProblem extends StatefulWidget {
  const ReportProblem({super.key});

  @override
  State<ReportProblem> createState() => _ReportProblemState();
}

class _ReportProblemState extends State<ReportProblem> {
  bool isChecked2 = false;
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
              EdgeInsets.only(left: MediaQuery.of(context).size.width / 3 - 80),
          child: Row(
            children: [
              const Text(
                'Report a problem',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 6 - 22,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Send',
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: SizedBox(
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    hintText: 'Write your problem or suggest',
                    // contentPadding:
                    //     const EdgeInsetsDirectional.only(start: 10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Post ady',
                      hintStyle: const TextStyle(fontSize: 14),
                      // labelText: 'Post ady',
                      suffixStyle: const TextStyle(color: Colors.green)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                  const Text(
                    'Attach logs',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: const Text(
                maxLines: 5,
                'Logs contain information about the user, installed application, phone number, device ID and other information for the developers to analyze the problem',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            )
          ],
        ),
      )),
    );
  }
}
