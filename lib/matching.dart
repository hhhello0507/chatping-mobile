import 'package:chatping/color/build_context+.dart';
import 'package:chatping/color/sementic/background.dart';
import 'package:chatping/component/button/cp_cta_button.dart';
import 'package:chatping/component/theme/textstyle.dart';
import 'package:chatping/util/primary_gradient_mask.dart';
import 'package:flutter/material.dart';
import 'matching_first.dart';

class MatchingPage extends StatefulWidget {
  const MatchingPage({super.key});

  @override
  State<MatchingPage> createState() => _MatchingPageState();
}

class _MatchingPageState extends State<MatchingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color(Background.normal),
      body: Stack(
        children: [
          // main
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/kiss_face.png'),
                  const SizedBox(height: 32),
                  Column(
                    children: [
                      const PrimaryGradientMask(
                        child: Text(
                          "우리 동네 랜덤 채팅",
                          style: CPTextStyle.bold1,
                        ),
                      ),
                      const SizedBox(height: 16),
                      CPCTAButton("매칭 시작", onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MatchingFirst()));
                      })
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
