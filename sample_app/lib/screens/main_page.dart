import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/side_menu_bar.dart';
import 'map_page.dart';

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
          title: const Text(
            '차량 예약',
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.blue),
          ),
          iconTheme: const IconThemeData(color: Colors.black45),
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        body: Container(
          color: Colors.grey,
          child: Column(
            children: [
              // 상단
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.grey,
                  child: Container(
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
                    child: InkWell(
                      onTap: () => showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: const Text(''),
                                content: SizedBox(
                                  height: 350,
                                  child: Column(
                                    children: <Widget>[
                                      MaterialButton(
                                        child: const Text("OK"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      )
                                    ],
                                  ),
                                ));
                          }),
                      child: Row(
                        children: [
                          const Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.calendar_month,
                              color: Colors.blue,
                            ),
                          ),
                          const Expanded(
                            flex: 2,
                            child: Text(
                              '이용시간 설정하기',
                              style: TextStyle(color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              '${DateFormat.yMMMd().format(DateTime.now())} '
                              '- ${DateFormat.yMMMd().format(DateTime.now())}',
                              style: const TextStyle(color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // 중단
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MapPage()),
                          );
                        },
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(6, 5, 6, 5),
                                color: Colors.grey.withOpacity(0.8),
                                child: const Text(
                                  '위치',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Container(
                                padding: const EdgeInsets.only(left: 10),
                                child: const Text(
                                  '신한이노플렉스 지하 주차장',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(7, 5, 7, 5),
                                child: const Text(
                                  '자세히',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),

              //하단
              Expanded(
                flex: 8,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            if (kDebugMode) {
                              print(DateFormat.yMMMd().format(DateTime.now()));
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 150,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey.withOpacity(0.2),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Image.asset(
                                    'assets/images/seltos.png',
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Center(
                                    child: ListView(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      children: [
                                        const Text(
                                          '셀토스',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 18),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: const Text(
                                            '162허 1729',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: const Text(
                                            '사용자',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.blue),
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        /*
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
                        color: Colors.grey,
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
                        color: Colors.grey,
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
         */
      ),
    );
  }
}
