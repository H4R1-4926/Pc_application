import 'package:flutter/material.dart';
import 'package:pc_application/Const/color.dart';

Future<dynamic> acoountAddAndEdit(BuildContext context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Center(child: Text('Add account')),
        titleTextStyle: const TextStyle(
          fontSize: 25,
          color: kBlack,
          fontWeight: FontWeight.w600,
        ),
        content: SizedBox(
          height: 300,
          width: 500,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 220,
                child: TextField(
                  keyboardType: TextInputType.name,
                  cursorColor: kBlack,
                  decoration: InputDecoration(
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kBlack),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kDarkGreen),
                      ),
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: kBlack.withOpacity(.5),
                      ),
                      suffix: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.close))),
                ),
              ),
              SizedBox(
                width: 270,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  cursorColor: kBlack,
                  decoration: InputDecoration(
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kBlack),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kDarkGreen),
                      ),
                      hintText: 'Phone',
                      hintStyle: TextStyle(
                        color: kBlack.withOpacity(.5),
                      ),
                      suffix: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.close))),
                ),
              ),
              SizedBox(
                width: 270,
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: kBlack,
                  decoration: InputDecoration(
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kBlack),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kDarkGreen),
                      ),
                      hintText: 'OP balance (optional)',
                      hintStyle: TextStyle(
                        color: kBlack.withOpacity(.5),
                      ),
                      suffix: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.close))),
                ),
              ),
              TextField(
                keyboardType: TextInputType.name,
                cursorColor: kBlack,
                decoration: InputDecoration(
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: kBlack),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: kDarkGreen),
                    ),
                    hintText: 'Description (optional)',
                    hintStyle: TextStyle(
                      color: kBlack.withOpacity(.5),
                    ),
                    suffix: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.close))),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Add',
              style: TextStyle(color: kDarkGreen),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Close',
              style: TextStyle(color: kDarkGreen),
            ),
          )
        ],
      );
    },
  );
}

Future<dynamic> debitAddAndEdit(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        backgroundColor: const Color.fromARGB(255, 216, 255, 233),
        title: const Center(
          child: Text('Add Debit bill'),
        ),
        titleTextStyle: const TextStyle(
          fontSize: 25,
          color: kBlack,
          fontWeight: FontWeight.w600,
        ),
        content: SizedBox(
          width: 400,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  cursorColor: const Color.fromARGB(255, 150, 34, 2),
                  maxLength: 15,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffix: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.close)),
                    counter: const Text(' '),
                    hintText: 'Amount',
                    border: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 77, 10, 1))),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 255, 13, 0))),
                  ),
                ),
              ),
              TextField(
                cursorColor: const Color.fromARGB(255, 255, 13, 0),
                maxLength: 50,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  suffix: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.close)),
                  counter: const Text(' '),
                  hintText: 'Description',
                  border: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 77, 10, 1))),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 255, 13, 0))),
                ),
              )
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Add bill',
              style: TextStyle(color: Color.fromARGB(255, 255, 13, 0)),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Cancel',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ],
      );
    },
  );
}

Future<dynamic> creditAddAndEdit(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        backgroundColor: const Color.fromARGB(255, 216, 255, 233),
        title: const Center(
          child: Text('Add Credit bill'),
        ),
        titleTextStyle: const TextStyle(
          fontSize: 25,
          color: kBlack,
          fontWeight: FontWeight.w600,
        ),
        content: SizedBox(
          width: 400,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  cursorColor: kDarkGreen,
                  maxLength: 15,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffix: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.close)),
                    counter: const Text(' '),
                    hintText: 'Amount',
                    border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kDarkDarkGreen)),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kMainGreen)),
                  ),
                ),
              ),
              TextField(
                cursorColor: kDarkGreen,
                maxLength: 50,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  suffix: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.close)),
                  counter: const Text(' '),
                  hintText: 'Description',
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: kDarkDarkGreen)),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: kMainGreen)),
                ),
              )
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Add bill',
              style: TextStyle(color: kDarkGreen),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Cancel',
              style: TextStyle(color: Color.fromARGB(255, 141, 9, 0)),
            ),
          ),
        ],
      );
    },
  );
}
