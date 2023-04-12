import 'package:flutter/material.dart';

import 'components/chating_screen.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Container(
                height: 32,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(15)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Search',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                  ),
                ),
              ),
            ),
            ListView.builder(
                itemCount: 20,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ChattingScreen()));
                      },
                      child: SizedBox(
                        height: 62,
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
                              padding: const EdgeInsets.only(left: 15),
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
                                    width:
                                        MediaQuery.of(context).size.width - 110,
                                    child: const Text(
                                      maxLines: 3,
                                      'Hormatly kardeshler! Satlyk Monoblok bar achylmadyk, paket. Core i5',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      )),
    );
  }
}
