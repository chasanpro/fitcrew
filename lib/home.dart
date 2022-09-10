import 'package:fitcrew/board.dart';
import 'package:fitcrew/text.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:fitcrew/launchers.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String urli =
      "https://instagram.com/nani_aesthetic__999?igshid=YmMyMTA2M2Y=";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String _url;

  late IFrameElement _iframeElement;

  @override
  initState() {
    super.initState();
    _url =
        'https://open.spotify.com/embed/playlist/6HYkdNVzw1Bm4rf1QmnI7F?utm_source=generator&theme=0';
    _iframeElement = IFrameElement()
      ..src = _url
      ..id = 'iframe'
      ..style.border = 'none';
    //ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );
  }

  @override
  Widget build(BuildContext context) {
    Color bright = Colors.white;
    Color dark = Colors.black;
    return Material(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 157, 187, 250),
                  Color.fromRGBO(184, 192, 255, 1),
                  Color.fromRGBO(200, 182, 255, 1),
                  Color.fromRGBO(231, 198, 255, 1),
                  Color.fromRGBO(255, 214, 255, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, .15, .35, .55, 0.8]),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    height: 1700,
                    width: 700,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: bright),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage("avatar.png"),
                            radius: 72,
                          ),
                          script('this is test intro '),
                          Container(
                            color: bright,
                            width: 150,
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: Image.asset('instagram.png'),
                                  onTap: () async {
                                    launchUrl(instagram);
                                  },
                                ),
                                InkWell(
                                  child: Image.asset('whatsapp.png'),
                                  onTap: () async {
                                    launchUrl(whatsapp);
                                  },
                                ),
                                InkWell(
                                  child: Image.asset('messenger.png'),
                                  onTap: () async {
                                    launchUrl(facebook);
                                  },
                                ),
                                InkWell(
                                  child: Image.asset('gmail.png'),
                                  onTap: () async {
                                    launchUrl(gmail);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  15.0), //add border radius
                              child: Image.asset(
                                "ytb.png",
                                height: 250.0,
                                width: 530.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color:
                                        const Color.fromARGB(255, 109, 109, 59),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width / 2.6,
                                  constraints: const BoxConstraints(
                                      maxHeight: 250, maxWidth: 260),
                                ),
                                Container(
                                  width: 10,
                                  constraints:
                                      const BoxConstraints(maxWidth: 10),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color:
                                        const Color.fromARGB(255, 109, 109, 59),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width / 2.6,
                                  constraints: const BoxConstraints(
                                      maxHeight: 250, maxWidth: 260),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Container(
                              decoration: BoxDecoration(
                                color: dark,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              // color: Colors.grey,
                              width: 530,
                              height: 450,

                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: HtmlElementView(
                                  viewType: 'iframeElement',
                                ),
                              ),
                            ),
                          ),
                          notif(),
                          script('Made with Flutter💙 by Chaitanya Damarasingu')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
