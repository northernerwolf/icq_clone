import 'package:flutter/material.dart';

import '../../icq_icon.dart';

// ignore: must_be_immutable
class BottomNavbarButton extends StatelessWidget {
  List iconsLight = [
    IcqIcons.users,
    IcqIcons.phone,
    Icons.message,
    IcqIcons.settings,
  ];
  List iconsBold = [
    IcqIcons.users,
    IcqIcons.phone,
    Icons.message,
    IcqIcons.settings,
  ];
  final Function() onTapp;
  final int selectedIndex;
  final int index;
  final bool icon;
  BottomNavbarButton({
    required this.onTapp,
    required this.selectedIndex,
    required this.index,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapp,
      child: Column(
        children: [
          Expanded(
            child: AnimatedContainer(
              width: double.infinity,
              height: index == selectedIndex ? 70 : 0,
              decoration: const BoxDecoration(),
              duration: const Duration(milliseconds: 500),
              curve: Curves.decelerate,
              child: Column(
                children: [
                  Container(
                    height: 1,
                    color: Colors.grey[100],
                  ),
                  Expanded(
                    child: index != selectedIndex
                        ? icon
                            ? const Icon(Icons.local_activity)
                            : Icon(
                                iconsLight[index],
                                size: 22,
                                color: Colors.grey,
                              )
                        : icon
                            ? const Icon(Icons.add)
                            : Container(
                                // decoration: BoxDecoration(
                                //     shape: BoxShape.circle,
                                //     color: index == selectedIndex
                                //         ? Colors.green[100]
                                //         : Colors.transparent),
                                child: Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: Icon(
                                    iconsBold[index],
                                    size: 22,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
