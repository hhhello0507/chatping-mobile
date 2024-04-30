import 'package:flutter/material.dart';

class MatchingThird extends StatefulWidget {
  const MatchingThird({super.key});

  @override
  State<MatchingThird> createState() => _MatchingThirdState();
}

class _MatchingThirdState extends State<MatchingThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/heart.png'),
            SizedBox(height: 32,),
            const Text(
              '매칭 중...',
              style: TextStyle(
                color: Color(0xFF0F0F0F),
                fontSize: 20,
                fontFamily: 'Noto Sans KR',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8,),
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
