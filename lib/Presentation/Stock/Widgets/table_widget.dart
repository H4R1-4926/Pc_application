import 'package:flutter/material.dart';
import 'package:pc_application/Const/color.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLightLightGreen,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: DataTable(
                headingRowColor: const WidgetStatePropertyAll(kDarkGreen),
                dividerThickness: 1,
                border: TableBorder.all(),
                headingTextStyle: const TextStyle(color: kWhite),
                columns: const [
                  DataColumn(
                    label: Text('Sl.no'),
                  ),
                  DataColumn(label: Text('Name of the item')),
                  DataColumn(label: Text('Unit')),
                  DataColumn(label: Text('Qty left')),
                  DataColumn(label: Text('Sale Price')),
                  DataColumn(label: Text(' '))
                ],
                rows: List.generate(20, (index) {
                  return DataRow(cells: [
                    DataCell(
                      Center(child: Text('${index + 1}')),
                    ),
                    const DataCell(
                      Text('Name'),
                    ),
                    const DataCell(
                      Text('Pcs'),
                    ),
                    const DataCell(
                      Text('30'),
                    ),
                    const DataCell(
                      Text('60.00/-'),
                    ),
                    DataCell(
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(kLightGreen)),
                              child: const Text(
                                'Modify',
                                style: TextStyle(color: kBlack),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                      Color.fromARGB(255, 255, 85, 82))),
                              child: const Text(
                                'Delete',
                                style: TextStyle(color: kBlack),
                              )),
                        ],
                      ),
                    ),
                  ]);
                })),
          ),
        ),
      ),
    );
  }
}
