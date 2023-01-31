import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/screens/login_page.dart';

import '../widgets/side_menu_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  /*
  DateTimeRange? _selectedDateRange;
  TextEditingController dateController = TextEditingController();

  DateTime now = DateTime.now();
   */

  /*
  void _show() async {
    final DateTimeRange? result = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022, 1, 1),
      lastDate: DateTime(2030, 12, 31),
      currentDate: DateTime.now(),
      saveText: 'Done',
    );

    if (result != null) {
      // Rebuild the UI
      if (kDebugMode) {
        print(result.start.toString());
      }
      setState(() {
        _selectedDateRange = result;
      });
    }
  }
   */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      home: Scaffold(
        endDrawer: NavDrawer(),
        appBar: AppBar(
          title: const Text(
            '차량 배차 시스템',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 1,

          /*
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.alarm,
                  color: Colors.black,
                ))
          ],

           */

        ),
        body: Container(),
        /*
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: _selectedDateRange == null
                  ? SizedBox(
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: InkWell(
                                onTap: () {
                                  _show();
                                },
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 1,
                                          color: Colors.grey.withOpacity(0.4)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 0.2,
                                          blurRadius: 1,
                                          offset: const Offset(0, 0.2),
                                        ),
                                      ]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        Icons.calendar_month,
                                        color: Colors.blue,
                                      ),
                                      const Text('이용시간 설정하기'),
                                      Text(
                                        '기간..${DateTime.now()}',
                                        style:
                                            const TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                  : Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Start date
                          Text(
                            "Start date: ${_selectedDateRange?.start.toString().split(' ')[0]}",
                            style: const TextStyle(
                                fontSize: 24, color: Colors.blue),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // End date
                          Text(
                              "End date: ${_selectedDateRange?.end.toString().split(' ')[0]}",
                              style: const TextStyle(
                                  fontSize: 24, color: Colors.red)),
                          TextButton(
                            child: const Text('Logout'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                              );
                            },
                          )
                        ],
                      ),
                    ),
            ),
            Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: ListView(
                children: const [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                  )
                ],
              ),
            )
          ],
        ),
         */
      ),
    );
  }
}
