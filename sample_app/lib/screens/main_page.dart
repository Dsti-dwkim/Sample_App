import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/side_menu_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      home: Scaffold(
        endDrawer: NavDrawer(),
        appBar: AppBar(
          title: Text(
            '차량 예약',
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.blue),
          ),
          iconTheme: IconThemeData(color: Colors.black45),
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 0.5, color: Colors.black.withOpacity(0.5)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 0.2,
                              blurRadius: 1,
                              offset: const Offset(0, 0.2),
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            color: Colors.blue,
                          ),
                          const Text('이용시간 설정하기'),
                          Text(
                            '기간..${DateTime.now()}',
                            style: const TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 9,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 0.5, color: Colors.black.withOpacity(0.5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 0.2,
                          blurRadius: 1,
                          offset: const Offset(0, 0.2),
                        ),
                      ]),
                  child: ListView(
                    children: [
                      Container(
                        height: 150,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Image.asset('assets/images/seltos.png'),
                            ),
                            Expanded(
                              flex: 6,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text('셀토스', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
                                    padding: EdgeInsets.only(top: 5, left: 15),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  Container(
                                    child: Text('162허 1729', style: TextStyle(fontSize: 15, color: Colors.grey),),
                                    padding: EdgeInsets.only(top: 5, left: 15),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  Container(
                                    child: Text('사용자', style: TextStyle(fontSize: 15, color: Colors.grey),),
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 15),
                                    alignment: Alignment.centerLeft,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Image.asset('assets/images/seltos.png'),
                            ),
                            Expanded(
                              flex: 6,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text('셀토스', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
                                    padding: EdgeInsets.only(top: 5, left: 15),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  Container(
                                    child: Text('162허 1729', style: TextStyle(fontSize: 15, color: Colors.grey),),
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 15),
                                    alignment: Alignment.centerLeft,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
