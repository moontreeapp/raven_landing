import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

void main() => runApp(const LandingApp());

class LandingApp extends StatelessWidget {
  const LandingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const LandingPage(),
      },
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('background.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('phones.png',
                        height: 360, width: 435), //height: 720/2, width:870/2
                    const SizedBox(width: 100),
                    Column(
                      children: [
                        Text('RVN Bag',
                            style: TextStyle(
                                fontSize: 64.0, color: Colors.grey.shade200)),
                        Row(children: [
                          IconButton(
                              icon: Image.asset('google.png'),
                              iconSize: 170,
                              tooltip: 'Play Store',
                              onPressed: () => js.context.callMethod(
                                  'open', ['https://play.google.com/'])),
                          const SizedBox(width: 50),
                          IconButton(
                            icon: Image.asset('apple.png'),
                            iconSize: 170,
                            tooltip: 'App Store',
                            onPressed: () => js.context.callMethod(
                                'open', ['https://www.apple.com/app-store/']),
                          ),
                        ]),
                        Row(children: [
                          Image.asset(
                            'moontree_logo.png',
                            //'favTransparentCenter.png',
                            height: 72,
                            width: 72,
                          ),
                          Text('made by MoonTree',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.grey.shade200)),
                        ]),
                      ],
                    )
                  ],
                ),
              ],
            )));
  }
}
