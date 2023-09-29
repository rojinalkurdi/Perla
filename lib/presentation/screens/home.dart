import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perlatest/businesslogic/adding%20text/bloc/text_list_bloc.dart';
import 'package:perlatest/businesslogic/bloc/app_theme_bloc.dart';
import 'package:perlatest/presentation/consts/colors.dart';
import 'package:perlatest/presentation/consts/localization.dart';
import 'package:perlatest/presentation/consts/services/services.dart';
import 'package:perlatest/presentation/widgets/custom_button.dart';
import 'package:perlatest/presentation/widgets/text_table.dart';

class HomePage extends StatelessWidget {
  final String username;
  const HomePage({super.key, required this.username});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Container(
          padding: const EdgeInsets.only(left: 24, top: 24),
          child: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Image.asset("assets/images/drawer.png"));
          }),
        ),
        titleSpacing: 0,
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.fromLTRB(10, 15, 0, 10),
                child: Image.asset("assets/images/Menu.png"),
              ),
              const SizedBox(height: 20),
              Text(username),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Expanded(flex: 1, child: Icon(Icons.wb_sunny_outlined)),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 4,
                      child: Text(
                          AppLocalizations.of(context)!.translate("DarkMode"))),
                  const SizedBox(
                    width: 100,
                  ),

                  BlocBuilder<AppThemeBloc, AppThemeState>(
                    bloc: AppThemeBloc(),
                    builder: (context, state) {
                      return Expanded(
                        flex: 3,
                        child: Switch(value: true, onChanged: (_) {}),
                      );
                    },
                  )

                  //Switch(value: lightTheme, onChanged: BlocProvider.of<AppThemeBloc>(context).add(DarkEvent()))
                  // MaterialButton(onPressed: () {
                  //   BlocProvider.of<AppThemeBloc>(context).add(LightEvent());
                  // })
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(Icons.language),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child:
                        Text(AppLocalizations.of(context)!.translate("Arabic")),
                    onTap: () {
                      sharedPreferences!.setString('lang', 'ar');
                    },
                  ),
                  const Text("/"),
                  InkWell(
                    child: Text(
                        AppLocalizations.of(context)!.translate("English")),
                    onTap: () {
                      sharedPreferences!.setString('lang', 'en');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(Icons.logout, color: Colors.red),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      AppLocalizations.of(context)!.translate("logout"),
                      style: const TextStyle(color: Colors.red),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 5,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: AppLocalizations.of(context)!
                                  .translate("entertxt"),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(10)),
                              filled: true,
                              fillColor: AppColors.fillGrey),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: CustomButton(
                              onPressed: () {},
                              text: AppLocalizations.of(context)!
                                  .translate("Add")))
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                //_______________________________________________

                // BlocBuilder<TextListBloc, TextListState>(
                //   builder: (context, state) {
                //     if (state is TextListUpdated && state.text.isNotEmpty) {
                //       final text = state.text;
                //       return ListView.builder(
                //           itemCount: text.length,
                //           itemBuilder: (context, index) {
                //             final text = state.text[index];
                //             return TextTable(context, text);
                //           });
                //     }
                //   },
                // )

                DataTable(columns: [
                  DataColumn(
                      label: Text(
                          AppLocalizations.of(context)!.translate("Text"))),
                  DataColumn(
                      label: Text(
                          AppLocalizations.of(context)!.translate("Date"))),

                ], rows: <DataRow>[
                  DataRow(cells: <DataCell>[
                    DataCell(Row(
                      children: [
                        Expanded(flex: 15,
                          child: Text("yalli hwee")),
                        Expanded(
                          flex: 1,
                          child: SizedBox(width: 10,))
                      ],
                    )),
                    DataCell(Row(children: [
                      Expanded(flex: 2,
                        child: Text(DateTime.now().toString())),
                      Expanded(flex: 1,
                        child: SizedBox(width: 2,)),
                      Expanded(flex: 1,
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined,color: Colors.blue,))),
                      Expanded(
                        flex: 1,
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline_outlined,color: Colors.red)))])),
                  ])
                ])

               // _______________________________________________
                // Table(
                //   children: const [
                //     TableRow(
                //       decoration: BoxDecoration(

                //         color: AppColors.fillGrey
                //       ),
                //         children: [Text("Text"), Text("Date")])
                //   ],
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
