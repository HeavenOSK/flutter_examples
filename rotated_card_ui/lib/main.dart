import 'dart:math' as math;

import 'package:flutter/material.dart';

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

  static const double cardHeight = 540;
  static const double cardWidth = 360;

  @override
  Widget build(BuildContext context) {
    print(_currentSession);
    final deviceSize = MediaQuery.of(context).size;
    final defaultTopPadding = (deviceSize.height - cardHeight) / 2;
    final defaultLeftPadding = (deviceSize.width - cardWidth) / 2;
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
                  angle: -(diffX * 0.04) * math.pi / 24,
                  alignment: Alignment.topLeft,
                  origin: _currentSession?.localPosition ?? Offset.zero,
                  child: Container(
                    height: 540,
                    width: 360,
                    color: Colors.amberAccent,
                    child: _currentSession != null
                        ? Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: _currentSession.localPosition.dy < 18
                                    ? 0
                                    : _currentSession.localPosition.dy - 18,
                                left: _currentSession.localPosition.dx < 18
                                    ? 0
                                    : _currentSession.localPosition.dx - 18,
                              ),
                              child: Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(36),
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
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
