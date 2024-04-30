import 'package:chatping/matching_third.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchingSecond extends StatefulWidget {
  const MatchingSecond({super.key});

  @override
  State<MatchingSecond> createState() => _MatchingSecondState();
}

class _MatchingSecondState extends State<MatchingSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "프로필을 선택해줘",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: FilledButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MatchingThird()));
                    },
                    child: const Text("계속하기")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
