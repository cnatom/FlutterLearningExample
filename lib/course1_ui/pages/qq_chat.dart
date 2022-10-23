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
          QQChatSearchBar(),
          _buildMessage(),
          _buildMessage(),
          _buildMessage(),
          _buildMessage(),
          _buildMessage(),
          _buildMessage(),

        ],
      ),
    );
  }

  Container _buildMessage() {
    return Container(
          padding: EdgeInsets.symmetric(vertical: UIConfig.paddingTB,horizontal: UIConfig.paddingRL),
          color: Colors.white,
          width: double.infinity,
          child: Row(
            children: [
              Container(
                  width: 48,
                  height: 48,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'http://q1.qlogo.cn/g?b=qq&nk=1004275481&s=640'),
                          fit: BoxFit.contain))),
              const SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("计算机学院群",style: TextStyle(fontSize: UIConfig.fontSizeBig),),
                        Text("13:20",style: TextStyle(fontSize: UIConfig.fontSizeMini,color: Color(UIConfig.colorTextMini)),)
                      ],
                    ),
                    SizedBox(height: 2,),
                    Text("辅导员：你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: UIConfig.fontSizeMini,color: Color(UIConfig.colorTextMini)),)
                  ],
                ),
              ),
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
      color: Color(UIConfig.colorBackgroundGrey),
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
            Text("搜索",style: TextStyle(fontSize: UIConfig.fontSizeBig,color: Color(UIConfig.colorTextMini)),)
          ],
        ),
      ),
    );
  }
}


