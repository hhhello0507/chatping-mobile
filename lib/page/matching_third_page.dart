import 'package:chatping/color/build_context+.dart';
import 'package:chatping/color/sementic/background.dart';
import 'package:chatping/color/sementic/label.dart';
import 'package:chatping/component/theme/textstyle.dart';
import 'package:flutter/material.dart';

class MatchingThirdPage extends StatefulWidget {
  const MatchingThirdPage({super.key});

  @override
  State<MatchingThirdPage> createState() => _MatchingThirdPageState();
}

class _MatchingThirdPageState extends State<MatchingThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color(Background.normal),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/heart.png'),
            const SizedBox(height: 32,),
            Text(
              '매칭 중...',
              style: CPTextStyle.subTitle1.apply(color: context.color(Label.normal)),
            ),
            const SizedBox(height: 8),
            const Text(
              '너와 가장 어울리는 친구를 찾고 있어!',
              style: TextStyle(
                color: Color(0xFFF50A7A),
                fontSize: 16,
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
