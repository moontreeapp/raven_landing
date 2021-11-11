import 'package:flutter/material.dart';
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
                        Text('RVN Wallet',
                            style: TextStyle(
                                fontSize: 64.0, color: Colors.grey.shade200)),
                        const SizedBox(height: 30),
                        Row(children: [
                          ElevatedButton(
                              onPressed: () {
                                js.context.callMethod(
                                    'open', ['https://play.google.com/']);
                              },
                              child: const Text('Android Play Store')),
                          const SizedBox(width: 50),
                          ElevatedButton(
                              onPressed: () {
                                js.context.callMethod('open',
                                    ['https://www.apple.com/app-store/']);
                              },
                              child: const Text('iOS App Store')),
                        ]),
                        const SizedBox(height: 70),
                        Row(children: [
                          Image.asset(
                            //'moontree_eclipse_dark_transparent.png',
                            'moontree_logo.png',
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
