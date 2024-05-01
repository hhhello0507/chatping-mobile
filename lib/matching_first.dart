import 'package:chatping/color/build_context+.dart';
import 'package:chatping/color/sementic/background.dart';
import 'package:chatping/component/button/cp_cta_button.dart';
import 'package:chatping/component/theme/textstyle.dart';
import 'package:chatping/matching_second.dart';
import 'package:chatping/util/primary_gradient_mask.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color/sementic/inverse.dart';

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
      backgroundColor: context.color(Background.normal),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const PrimaryGradientMask(
                child: Text(
                  "나는 익명의...",
                  style: CPTextStyle.bold1,
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 100,
                child: CupertinoPicker(
                    itemExtent: 32,
                    onSelectedItemChanged: (int selectedItem) {
                      setState(() {
                        selectedIdx = selectedItem;
                      });
                    },
                    children:
                        List<Widget>.generate(tempAnimals.length, (int index) {
                      return Text(
                        tempAnimals[index],
                        style: TextStyle(color: context.color(Inverse.background)),
                      );
                    })),
              ),
              const SizedBox(height: 32),
              CPCTAButton("계속하기", onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MatchingSecond()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
