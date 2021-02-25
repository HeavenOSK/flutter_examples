import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ipad_ui/home/home_controller.dart';
import 'package:ipad_ui/home/home_state.dart';

import 'dock.dart';

class IPadUIHome extends StatefulWidget {
  const IPadUIHome({Key? key}) : super(key: key);

  static final controller = StateNotifierProvider(
    (_) => HomeController(),
  );

  @override
  _IPadUIHomeState createState() => _IPadUIHomeState();
}

class _IPadUIHomeState extends State<IPadUIHome>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final deviceSize = MediaQuery.of(context).size;
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Consumer(
            builder: (context, watch, child) {
              final state = watch(IPadUIHome.controller.state);
              return Center(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 160),
                  height: deviceSize.height * (state.draggingAny ? 0.99 : 1),
                  width: deviceSize.width * (state.draggingAny ? 0.99 : 1),
                  child: child,
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Scaffold(
                body: Center(
                  child: Text(
                    'iPad UI',
                    style: theme.textTheme.headline4,
                  ),
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Dock(),
          ),
        ],
      ),
    );
  }
}
