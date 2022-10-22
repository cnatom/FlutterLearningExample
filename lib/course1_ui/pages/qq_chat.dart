import 'package:flutter/material.dart';
import 'package:flutter_learning/ui_config.dart';

class QQChat extends StatelessWidget {
  const QQChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          QQChatSearchBar()
        ],
      ),
    );
  }
}

class QQChatSearchBar extends StatelessWidget {
  const QQChatSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(UIConfig.textColorMini),
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: UIConfig.paddingTB,horizontal: UIConfig.paddingRL),
        padding: EdgeInsets.symmetric(vertical: UIConfig.paddingTB),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(UIConfig.borderRadius)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search,color: Colors.grey,size: UIConfig.iconSizeBig,),
            const SizedBox(width: 2,),
            Text("搜索",style: TextStyle(fontSize: UIConfig.fontSizeBig,color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}


