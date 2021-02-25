import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:rotated_card_ui/sample_card.dart';

import 'swipe_session.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SwipeSession _currentSession;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final defaultTopPadding = (deviceSize.height - SampleCard.height) / 2;
    final defaultLeftPadding = (deviceSize.width - SampleCard.width) / 2;
    final diffX = _currentSession?.difference?.dx ?? 0 / deviceSize.width;

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: defaultTopPadding + (_currentSession?.difference?.dy ?? 0),
              left: defaultLeftPadding + (_currentSession?.difference?.dx ?? 0),
              child: GestureDetector(
                onPanStart: (detail) {
                  setState(() {
                    _currentSession = SwipeSession(
                      startPosition: detail.globalPosition,
                      currentPosition: detail.globalPosition,
                      localPosition: detail.localPosition,
                    );
                  });
                },
                onPanUpdate: (detail) {
                  setState(() {
                    _currentSession = _currentSession?.copyWith(
                      currentPosition: detail.globalPosition,
                    );
                  });
                },
                onPanEnd: (_) {
                  setState(() {
                    _currentSession = null;
                  });
                },
                child: Transform.rotate(
                  angle: -(diffX * 0.08) * math.pi / 24,
                  alignment: Alignment.topLeft,
                  origin: _currentSession?.localPosition ?? Offset.zero,
                  child: SampleCard(
                    rotationAxisPoint: _currentSession?.localPosition,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
