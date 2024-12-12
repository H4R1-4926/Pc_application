import 'package:flutter/material.dart';
import 'package:pc_application/Const/color.dart';
import 'package:pc_application/Presentation/Widgets/alert_widget.dart';
import 'package:pc_application/Presentation/Widgets/bubble_widget.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 350,
            height: double.infinity,
            decoration: const BoxDecoration(
                border: Border(
                    right: BorderSide(width: 0.3),
                    top: BorderSide(width: 0.3))),
            child: Column(
              children: [
                const ListTile(
                  title: Text(
                    'Accounts',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: kWhite),
                  ),
                  tileColor: kDarkGreen,
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const ListTile(
                        title: Text('Name of the Person'),
                        titleTextStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: kDarkDarkGreen),
                        subtitle:
                            Text('Balance: 30000/-\nLast Entry: 01/01/2000'),
                        subtitleTextStyle: TextStyle(color: kBlack),
                        isThreeLine: true,
                        leading: Icon(Icons.arrow_right),
                        titleAlignment: ListTileTitleAlignment.center,
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(
                      thickness: 0.8,
                    ),
                    itemCount: 30,
                  ),
                  //         Center(
                  //   child: Text(
                  //     'No account\nCreate by tapping \'+\'',
                  //     textAlign: TextAlign.center,
                  //   ),
                  // ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(top: BorderSide(width: 0.5))),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Name of the person',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, color: kWhite),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'OP balance: 20000/-',
                          style: TextStyle(color: kWhite, fontSize: 14),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu,
                              color: kWhite,
                            ))
                      ],
                    ),
                    tileColor: kDarkGreen,
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: kLightLightGreen,
                      child: ListView.builder(
                        reverse: true,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return alignDetails(index);
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: kWhite),
                    child: const Center(
                      child: Text(
                        'Closing balance:- 10000 \\-',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        color: kLightLightGreen,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          side: const BorderSide(
                                              width: 2.5,
                                              color: kDarkDarkGreen))),
                                  backgroundColor: const WidgetStatePropertyAll(
                                      Colors.transparent),
                                  elevation: const WidgetStatePropertyAll(0),
                                  fixedSize: const WidgetStatePropertyAll(
                                      Size(250, 50))),
                              onPressed: () {
                                creditAddAndEdit(context);
                              },
                              child: const Center(
                                  child: Text(
                                'Credit',
                                style: TextStyle(
                                    color: kDarkDarkGreen,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ))),
                          ElevatedButton(
                              style: ButtonStyle(
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          side: const BorderSide(
                                              width: 2.5,
                                              color: Color.fromARGB(
                                                  255, 123, 8, 0)))),
                                  backgroundColor: const WidgetStatePropertyAll(
                                      Colors.transparent),
                                  elevation: const WidgetStatePropertyAll(0),
                                  fixedSize: const WidgetStatePropertyAll(
                                      Size(250, 50))),
                              onPressed: () {
                                debitAddAndEdit(context);
                              },
                              child: const Center(
                                  child: Text(
                                'Debit',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 123, 8, 0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
          // const Expanded(
          //   child: Center(
          //     child: Text('No account selected'),
          //   ),
          // )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 270),
        child: FloatingActionButton(
          tooltip: 'Add new account',
          onPressed: () {
            acoountAddAndEdit(context);
          },
          backgroundColor: kDarkGreen,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: kWhite,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
