import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perlatest/businesslogic/adding%20text/bloc/text_list_bloc.dart';

import '../consts/localization.dart';

class TextTable extends StatelessWidget {
  const TextTable(BuildContext context, String text, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextListBloc(),
      child: DataTable(columns: [
        DataColumn(
            label: Text(AppLocalizations.of(context)!.translate("Text"))),
        DataColumn(
            label: Text(AppLocalizations.of(context)!.translate("Date"))),
      ], rows: <DataRow>[
        DataRow(cells: <DataCell>[
          DataCell(Row(
            children: [
              Expanded(flex: 15, child: Text("yalli hwee")),
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 10,
                  ))
            ],
          )),
          DataCell(Row(children: [
            Expanded(flex: 2, child: Text(DateTime.now().toString())),
            Expanded(
                flex: 1,
                child: SizedBox(
                  width: 2,
                )),
            Expanded(
                flex: 1,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit_outlined,
                      color: Colors.blue,
                    ))),
            Expanded(
                flex: 1,
                child: IconButton(
                    onPressed: () {},
                    icon:
                        Icon(Icons.delete_outline_outlined, color: Colors.red)))
          ])),
        ])
      ]),
    );
  }
}
