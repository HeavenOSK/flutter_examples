import 'package:flutter/material.dart';

class Dock extends StatelessWidget {
  const Dock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        height: 108,
        width: 560,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(246, 246, 246, 1),
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              offset: Offset(0, 2),
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppIcon(),
            AppIcon(),
            AppIcon(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              width: 2,
              color: const Color.fromRGBO(230, 230, 230, 1),
            ),
            AppIcon(),
            AppIcon(),
            AppIcon(),
          ],
        ),
      ),
    );
  }
}

class AppIcon extends StatelessWidget {
  const AppIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: 68,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 0,
          color: Colors.blue.withOpacity(
            0.7,
          ),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
