import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 76, 163, 175)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/images/fortune_cookie.png',
                width: 200, height: 200, fit: BoxFit.cover),
            const FortuneTextBox(),
          ],
        ),
      ),
    );
  }
}

class FortuneTextBox extends StatefulWidget {
  const FortuneTextBox({super.key});

  @override
  State<FortuneTextBox> createState() => _FortuneTextBox();
}

class _FortuneTextBox extends State<FortuneTextBox> {
  String _cookieFortuneText = "Find your fortune today!!!";
  final _fortuneList = [
    "Your hard work will soon pay off.",
    "Adventure is in your future.",
    "A surprise is waiting for you.",
    "Good luck will follow you wherever you go.",
    "Happiness is coming your way.",
    "You will achieve your dreams.",
    "Success is just around the corner.",
    "An exciting opportunity will present itself.",
    "Your talents will be recognized and rewarded.",
    "Expect great things in your life.",
    "Good news is on the horizon.",
    "Your kindness will lead to unexpected rewards.",
    "New experiences will enrich your life.",
    "A positive attitude will lead to positive outcomes.",
    "Trust your instincts; they are usually right.",
    "Someone special will enter your life soon.",
    "Your future is bright.",
    "Believe in yourself and others will too.",
    "Your hard work will soon be rewarded.",
    "Good fortune is coming your way.",
    "An old friend will reappear in your life.",
    "You will have a pleasant surprise.",
    "New adventures are on the horizon.",
    "Your creativity will lead to success.",
    "A new perspective will come with the new year.",
    "An unexpected event will bring you riches.",
    "A thrilling time is in your immediate future.",
    "You will be successful in your work.",
    "A friend will bring you good news.",
    "An important person will offer you support.",
    "A chance encounter will change your life.",
    "Good health will be yours for a long time.",
    "A fresh start will put you on your way.",
    "Your ability for accomplishment will follow with success.",
    "Adventure can be real happiness.",
    "Love is around the corner.",
    "A new relationship will blossom soon.",
    "You will travel to many places.",
    "Good things come to those who wait.",
    "You will be surrounded by good friends.",
    "Your life will be filled with joy and laughter.",
    "A close friend will share great news.",
    "A financial windfall is in your future.",
    "You will soon embark on a new journey.",
    "Your talents will lead you to success.",
    "A pleasant surprise is in store for you.",
    "New opportunities will soon arise.",
    "Good fortune is headed your way.",
    "Your positive attitude will bring you success.",
    "A joyful event will happen soon.",
    "You will meet someone who will change your life.",
    "Your dreams are about to come true.",
    "An unexpected gift will come your way.",
    "You will be admired by everyone you know.",
    "Your greatest wish will come true.",
    "New and rewarding friendships will develop.",
    "A thrilling time is ahead.",
    "You will have a great fortune in your hands.",
    "Someone will surprise you with something special.",
    "Expect to be appreciated by others.",
    "You will achieve great things.",
    "Your future is filled with happiness.",
    "Good luck will be yours for a long time.",
    "Someone will bring joy to your life.",
    "You will make a difference in someone's life.",
    "New possibilities are opening up for you.",
    "Your hard work will soon be noticed.",
    "You will find joy in unexpected places.",
    "A pleasant surprise is waiting for you.",
    "You will be blessed with good health.",
    "New adventures await you.",
    "An exciting opportunity will come your way.",
    "Your kindness will lead to success.",
    "Someone close to you has good news.",
    "You will soon receive an unexpected gift.",
    "Your positive outlook will lead to great things.",
    "A new chapter in your life is beginning.",
    "Good fortune will smile upon you.",
    "Your future is bright and filled with promise.",
    "You will soon achieve your goals.",
    "A surprise will bring you joy.",
    "New opportunities will present themselves.",
    "Your talents will be recognized.",
    "You will find happiness in your endeavors.",
    "An exciting new adventure awaits you.",
    "Good luck is coming your way.",
    "You will have a chance to help someone in need.",
    "Your efforts will soon be rewarded.",
    "You will meet someone who will inspire you.",
    "Great things are in store for you.",
    "A wonderful surprise is coming your way.",
    "You will achieve your heart's desire.",
    "Your future holds great things.",
    "Good things are on the way.",
    "Your dreams will soon come true.",
    "You will be surrounded by good luck.",
    "A new opportunity will lead to success.",
    "You will be filled with happiness.",
    "Good news is headed your way."
  ];

  void _getRandomFortune() {
    var random = Random();
    setState(() {
      _cookieFortuneText = _fortuneList[random.nextInt(_fortuneList.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            _cookieFortuneText,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
      ElevatedButton(
          onPressed: _getRandomFortune, child: const Text('Get your fortune')),
    ]);
  }
}
