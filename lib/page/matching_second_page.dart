import 'package:chatping/color/build_context+.dart';
import 'package:chatping/color/sementic/background.dart';
import 'package:chatping/component/button/cp_cta_button.dart';
import 'package:chatping/component/theme/textstyle.dart';
import 'package:chatping/page/matching_third_page.dart';
import 'package:chatping/util/primary_gradient_mask.dart';
import 'package:flutter/material.dart';

class MatchingSecondPage extends StatefulWidget {
  const MatchingSecondPage({super.key});

  @override
  State<MatchingSecondPage> createState() => _MatchingSecondPageState();
}

class _MatchingSecondPageState extends State<MatchingSecondPage> {
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
                  "프로필을 선택해줘",
                  style: CPTextStyle.bold1,
                ),
              ),
              const SizedBox(height: 32),
              CPCTAButton("계속하기", onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MatchingThirdPage()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
