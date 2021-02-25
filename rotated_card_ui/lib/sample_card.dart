import 'package:flutter/material.dart';

class SampleCard extends StatelessWidget {
  const SampleCard({
    this.rotationAxisPoint,
    Key key,
  }) : super(key: key);

  final Offset rotationAxisPoint;

  static double get height => 540;

  static double get width => 360;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _SampleCardPainter(
        rotationAxisPoint: rotationAxisPoint,
      ),
      size: Size(width, height),
    );
  }
}

class _SampleCardPainter extends CustomPainter {
  _SampleCardPainter({
    this.rotationAxisPoint,
  });

  final Offset rotationAxisPoint;

  double get circleRadius => 16;

  @override
  void paint(Canvas canvas, Size size) {
    _drawRect(canvas, size);
    if (rotationAxisPoint != null) {
      _drawAxis(canvas, size);
    }
  }

  void _drawAxis(Canvas canvas, Size size) {
    final double circleStrokeWidth = 2;
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = circleStrokeWidth;

    canvas.drawCircle(
      rotationAxisPoint,
      circleRadius,
      paint,
    );
    canvas.drawCircle(
      rotationAxisPoint,
      circleRadius - 4,
      paint,
    );
    canvas.drawCircle(
      rotationAxisPoint,
      circleRadius - 8,
      paint,
    );
    paint.strokeWidth = 2;

    final radius = circleRadius + circleStrokeWidth;

    canvas.drawLine(
      Offset(rotationAxisPoint.dx, 0),
      Offset(rotationAxisPoint.dx, rotationAxisPoint.dy - radius),
      paint,
    );
    canvas.drawLine(
      Offset(rotationAxisPoint.dx, rotationAxisPoint.dy + radius),
      Offset(rotationAxisPoint.dx, size.height),
      paint,
    );
    canvas.drawLine(
      Offset(0, rotationAxisPoint.dy),
      Offset(rotationAxisPoint.dx - radius, rotationAxisPoint.dy),
      paint,
    );
    canvas.drawLine(
      Offset(rotationAxisPoint.dx + radius, rotationAxisPoint.dy),
      Offset(size.width, rotationAxisPoint.dy),
      paint,
    );
  }

  void _drawRect(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.amberAccent
      ..style = PaintingStyle.fill;
    canvas.drawRect(
      Rect.fromPoints(
        Offset.zero,
        Offset(size.width, size.height),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
