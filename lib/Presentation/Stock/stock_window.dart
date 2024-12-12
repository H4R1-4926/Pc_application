import 'package:flutter/material.dart';
import 'package:pc_application/Const/color.dart';
import 'package:pc_application/Presentation/Stock/Widgets/table_widget.dart';

class StocksManagementWindow extends StatelessWidget {
  const StocksManagementWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            decoration: const BoxDecoration(
                color: kWhite, border: Border(bottom: BorderSide(width: 0.5))),
            child: Row(
              children: [
                const Expanded(
                  flex: 9,
                  child: Center(
                    child: Text(
                      'Stocks',
                      style: TextStyle(
                          color: kDarkDarkGreen,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(kDarkGreen)),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: const Text('Add Item'),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 220,
                                          child: TextField(
                                            keyboardType: TextInputType.name,
                                            cursorColor: kBlack,
                                            decoration: InputDecoration(
                                                border:
                                                    const UnderlineInputBorder(
                                                  borderSide:
                                                      BorderSide(color: kBlack),
                                                ),
                                                focusedBorder:
                                                    const UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kDarkGreen),
                                                ),
                                                hintText: 'Name',
                                                hintStyle: TextStyle(
                                                  color: kBlack.withOpacity(.5),
                                                ),
                                                suffix: IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                        Icons.close))),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 220,
                                          child: TextField(
                                            readOnly: true,
                                            cursorColor: kBlack,
                                            decoration: InputDecoration(
                                                border:
                                                    const UnderlineInputBorder(
                                                  borderSide:
                                                      BorderSide(color: kBlack),
                                                ),
                                                focusedBorder:
                                                    const UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kDarkGreen),
                                                ),
                                                hintText: 'Unit',
                                                hintStyle: TextStyle(
                                                  color: kBlack.withOpacity(.5),
                                                ),
                                                suffix: DropdownButton(
                                                    items: [],
                                                    onChanged: (value) {})),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 220,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            cursorColor: kBlack,
                                            decoration: InputDecoration(
                                                border:
                                                    const UnderlineInputBorder(
                                                  borderSide:
                                                      BorderSide(color: kBlack),
                                                ),
                                                focusedBorder:
                                                    const UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kDarkGreen),
                                                ),
                                                hintText: 'Qny (Optional)',
                                                hintStyle: TextStyle(
                                                  color: kBlack.withOpacity(.5),
                                                ),
                                                suffix: IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                        Icons.close))),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 220,
                                          child: TextField(
                                            keyboardType: TextInputType.name,
                                            cursorColor: kBlack,
                                            decoration: InputDecoration(
                                                border:
                                                    const UnderlineInputBorder(
                                                  borderSide:
                                                      BorderSide(color: kBlack),
                                                ),
                                                focusedBorder:
                                                    const UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kDarkGreen),
                                                ),
                                                hintText: 'Sale price',
                                                hintStyle: TextStyle(
                                                  color: kBlack.withOpacity(.5),
                                                ),
                                                suffix: IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                        Icons.close))),
                                          ),
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
                                  ]);
                            },
                          );
                        },
                        child: const Text(
                          'Add',
                          style: TextStyle(
                              color: kWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                )
              ],
            ),
          ),
          const Expanded(flex: 9, child: TableWidget()),
        ],
      ),
    );
  }
}
