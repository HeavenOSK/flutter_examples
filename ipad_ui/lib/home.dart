import 'package:flutter/material.dart';

import 'dock.dart';

class IPadUIHome extends StatelessWidget {
  const IPadUIHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Text(
              'iPad UI',
              style: theme.textTheme.headline4,
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
