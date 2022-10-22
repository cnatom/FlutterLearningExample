import 'package:flutter/material.dart';
import 'package:flutter_learning/course1_ui/qq_navigation.dart';
import 'package:flutter_learning/ui_config.dart';

main() => runApp(const MyApp());

/// App的入口
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 隐藏debug横幅
      routes: {
        QQNavigation.id:(context)=>QQNavigation()
      },
      home: const HomePage(),
    );
  }
}

/// 主页
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final EdgeInsetsGeometry padding = const EdgeInsets.symmetric(horizontal: 16,vertical: 16); // 内边距


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter培训项目记录"),
      ),
      body: ListView(
        children: [
          _buildRowButton(context,QQNavigation.id,QQNavigation.title)
        ],
      ),
    );
  }


  InkWell _buildRowButton(BuildContext context,String id,String title) {
    return InkWell(
      onTap: ()=>Navigator.pushNamed(context, id),
          child: Padding(
            padding: padding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,style: TextStyle(fontSize: UIConfig.fontSizeMain),),
                Icon(Icons.chevron_right,size: UIConfig.iconSizeMain,)
              ],
            ),
          ),
        );
  }


}

