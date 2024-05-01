import 'package:chatping/color/build_context+.dart';
import 'package:chatping/color/sementic/background.dart';
import 'package:chatping/color/sementic/label.dart';
import 'package:chatping/component/theme/textstyle.dart';
import 'package:chatping/util/primary_gradient_mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.color(Background.normal),
        title: const Text("채팅중", style: CPTextStyle.bold1),
        leading: const PrimaryGradientMask(
            child: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: null,
        )),
      ),
      backgroundColor: context.color(Background.normal),
      body: Column(
        children: [
          // text field
          Container(
            // height: 54,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 9),
            child: Row(
              children: [
                const SizedBox(width: 8),
                PrimaryGradientMask(
                    child: InkWell(
                        onTap: () {},
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        child: SvgPicture.asset(
                          'assets/icons/add_fill.svg',
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                          width: 36,
                          height: 36,
                        ))),
                const SizedBox(width: 8),
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Aa",
                      filled: true,
                      fillColor: context.color(Label.disable),
                    contentPadding: const EdgeInsets.all(0),
                    floatingLabelBehavior: FloatingLabelBehavior.never
                  ),
                )),
                const SizedBox(width: 8),
                PrimaryGradientMask(
                    child: InkWell(
                        onTap: () {},
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        child: SvgPicture.asset(
                          'assets/icons/send_fill.svg',
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                          width: 36,
                          height: 36,
                        ))),
                const SizedBox(width: 8),
              ],
            ),
          )
        ],
      ),
    );
  }
}
