import 'package:chatping/matching_second.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchingFirst extends StatefulWidget {
  const MatchingFirst({super.key});

  @override
  State<MatchingFirst> createState() => _MatchingFirstState();
}

var tempAnimals = [
  '자칼',
  '카피바라',
  '오소리',
  '도마뱀',
  '아프리카 회색 개미',
  '니크테레우테스 프로키오노이데스'
];

class _MatchingFirstState extends State<MatchingFirst> {

  var selectedIdx = 0;

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
                "나는 익명의...",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),
              Container(
                height: 100,
                child: CupertinoPicker(
                    itemExtent: 32,
                    onSelectedItemChanged: (int selectedItem) {
                      setState(() {
                        selectedIdx = selectedItem;
                      });
                    },
                    children: List<Widget>.generate(tempAnimals.length, (int index) {
                      return Text(tempAnimals[index]);
                    })),
              ),
              SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: FilledButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MatchingSecond()));
                    }, child: const Text("계속하기")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
