import 'package:flutter/material.dart';
import 'package:pc_application/Const/color.dart';

Widget alignDetails(int index) {
  final bool isTrueWhen;
  if (index == 5 || index == 2 || index == 8) {
    isTrueWhen = true;
  } else {
    isTrueWhen = false;
  }
  final Alignment alignment =
      isTrueWhen ? Alignment.centerRight : Alignment.centerLeft;

  return Container(
    alignment: alignment,
    child: Bubble(
      location: isTrueWhen,
    ),
  );
}

class Bubble extends StatelessWidget {
  final bool location;
  const Bubble({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: location
          ? Container(
              decoration: BoxDecoration(
                  border: Border.all(color: kDarkDarkGreen, width: 3.5),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Date:10/10/2000',
                          style: TextStyle(
                              color: kDarkDarkGreen,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            iconSize: 20,
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert_outlined)),
                      ],
                    ),
                    const Text(
                      'Credits/-',
                      style: TextStyle(
                          color: kDarkDarkGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            )
          : Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 123, 8, 0), width: 3.5),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Date:10/10/2000',
                          style: TextStyle(
                              color: Color.fromARGB(255, 123, 8, 0),
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            iconSize: 20,
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert_outlined)),
                      ],
                    ),
                    const Text(
                      'Debits/-',
                      style: TextStyle(
                          color: Color.fromARGB(255, 123, 8, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
