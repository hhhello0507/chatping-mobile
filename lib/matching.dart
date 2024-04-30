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
      backgroundColor: Colors.white,
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
                  Column(
                    children: [
                      const Text(
                        "우리 동네 랜덤 채팅",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: FilledButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MatchingFirst()));
                            }, child: const Text("매칭 시작")),
                      )
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
