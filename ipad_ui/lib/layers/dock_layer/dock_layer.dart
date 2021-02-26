import 'package:flutter/material.dart';
import 'package:ipad_ui/components/dock.dart';

class DockLayer extends StatefulWidget {
  const DockLayer({Key? key}) : super(key: key);

  @override
  _DockLayerState createState() => _DockLayerState();
}

class _DockLayerState extends State<DockLayer> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      left: (deviceSize.width - Dock.width) / 2,
      child: const Padding(
        padding: EdgeInsets.only(
          bottom: 24,
        ),
        child: Dock(),
      ),
    );
  }
}
