import 'package:flutter/material.dart';

import '../ui_config.dart';

class QQAppBar extends StatelessWidget {
  const QQAppBar({
    Key? key, this.qqNumber = "1004275481",
  }) : super(key: key);

  final String qqNumber;

  final Color fontColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          UIConfig.paddingRL, MediaQuery.of(context).padding.top, UIConfig.paddingRL, 0),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xff5DCBEF),
                Color(0xff50A2F8)
              ]
          )
      ),
      child: Row(
        children: [
          _buildAvatar(),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: _buildTextArea()
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.add,color: fontColor,))
        ],
      ),
    );
  }

  // 圆角头像
  Container _buildAvatar() {
    return Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                    'http://q1.qlogo.cn/g?b=qq&nk=1004275481&s=640'),
                fit: BoxFit.contain)));
  }

  Column _buildTextArea() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 用户名
        Text(
          "阿腾木",
          style: TextStyle(
              color: fontColor,
              fontSize: UIConfig.fontSizeBig,
              fontWeight: FontWeight.bold),
        ),
        // 在线状态
        Row(
          children: [
            // 小绿点
            Container(
              height: UIConfig.fontSizeMini,
              width: UIConfig.fontSizeMini,
              decoration: BoxDecoration(
                  color: Colors.green,
                  gradient: const LinearGradient(colors: [
                    Color(0xFF76EA98),
                    Color(0xFF66D88D)
                  ]),
                  borderRadius: BorderRadius.circular(100)),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "在线",
              style: TextStyle(fontSize: UIConfig.fontSizeMini,color: fontColor),
            )
          ],
        ),
      ],
    );
  }
}