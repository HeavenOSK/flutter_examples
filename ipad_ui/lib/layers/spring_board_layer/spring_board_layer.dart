import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'app_collection_layer.dart';

class SpringBoardLayer extends HookWidget {
  const SpringBoardLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue.withOpacity(0.3),
        child: Positioned.fill(
          child: AppCollectionLayer(),
        ),
      ),
    );
  }
}
