import 'package:flutter/material.dart';
import 'package:flutter_learning/course1_ui/pages/qq_chat.dart';
import 'package:flutter_learning/course1_ui/qq_appbar.dart';

class QQNavigation extends StatefulWidget {
  QQNavigation({Key? key}) : super(key: key);

  static const id = "course1UI_id";
  static const title = "UI基础：仿QQ App";

  @override
  State<QQNavigation> createState() => _QQNavigationState();
}

class _QQNavigationState extends State<QQNavigation> {
  int currentPageIndex = 0;

  late PageController navigationController;

  List<Map<String,IconData>> bottomData = [
    {"消息":Icons.chat_bubble},
    {"联系人":Icons.person},
    {"动态":Icons.star},
  ];


  @override
  void initState() {
    super.initState();
    navigationController = PageController();
  }


  @override
  void dispose() {
    super.dispose();
    navigationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const QQAppBar(),
          Expanded(
              child: PageView(
                controller: navigationController,
                children: [
                  QQChat(),
                  Container(color: Colors.blue,),
                  Container(),
                ],
                onPageChanged: (index){
                  setState(() {
                    currentPageIndex = index;
                  });
                },
              )
          ),
          BottomNavigationBar(
            currentIndex: currentPageIndex,
            onTap: (index){
              navigationController.jumpToPage(index);
            },
              items: bottomData.map((item){
                return BottomNavigationBarItem(icon: Icon(item.values.first),label: item.keys.first);
              }).toList()
          )
        ],
      ),
    );
  }
}


