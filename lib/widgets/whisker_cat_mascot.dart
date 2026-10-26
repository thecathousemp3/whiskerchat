// SPDX-FileCopyrightText: 2026-Present WhiskerChat contributors
// SPDX-License-Identifier: AGPL-3.0-or-later

import 'package:material_ui/material_ui.dart';

class WhiskerCatMascot extends StatelessWidget {
  final double size;

  const WhiskerCatMascot({super.key, required this.size});

  @override
  Widget build(BuildContext context) => SizedBox.square(
    dimension: size,
    child: CustomPaint(painter: _WhiskerCatPainter()),
  );
}

class _WhiskerCatPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();
    canvas.scale(size.width / 100, size.height / 100);

    final ink = Paint()..color = Colors.black;
    final paper = Paint()..color = Colors.white;
    final outline = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        const Rect.fromLTWH(3, 3, 94, 94),
        const Radius.circular(8),
      ),
      paper,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        const Rect.fromLTWH(3, 3, 94, 94),
        const Radius.circular(8),
      ),
      outline,
    );

    final head = Path()
      ..moveTo(18, 44)
      ..lineTo(12, 15)
      ..lineTo(35, 30)
      ..quadraticBezierTo(50, 22, 65, 30)
      ..lineTo(88, 15)
      ..lineTo(82, 44)
      ..cubicTo(91, 54, 87, 69, 78, 78)
      ..cubicTo(70, 86, 60, 89, 50, 89)
      ..cubicTo(40, 89, 30, 86, 22, 78)
      ..cubicTo(13, 69, 9, 54, 18, 44)
      ..close();
    canvas.drawPath(head, ink);

    final face = Path()
      ..moveTo(18, 22)
      ..lineTo(31, 32)
      ..lineTo(25, 43)
      ..close()
      ..moveTo(82, 22)
      ..lineTo(69, 32)
      ..lineTo(75, 43)
      ..close();
    canvas.drawPath(face, paper);
    canvas.drawOval(const Rect.fromLTWH(19, 36, 62, 47), paper);

    final shades = RRect.fromRectAndRadius(
      const Rect.fromLTWH(24, 46, 21, 14),
      const Radius.circular(3),
    );
    canvas.drawRRect(shades, ink);
    canvas.drawRRect(shades.shift(const Offset(31, 0)), ink);
    canvas.drawLine(const Offset(45, 51), const Offset(55, 51), ink..strokeWidth = 4);

    final glint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.square;
    canvas.drawLine(const Offset(28, 49), const Offset(34, 49), glint);
    canvas.drawLine(const Offset(59, 49), const Offset(65, 49), glint);

    final nose = Path()
      ..moveTo(46, 63)
      ..lineTo(54, 63)
      ..lineTo(50, 68)
      ..close();
    canvas.drawPath(nose, ink);

    final mouth = Path()
      ..moveTo(50, 68)
      ..quadraticBezierTo(49, 74, 44, 74)
      ..moveTo(50, 68)
      ..quadraticBezierTo(51, 74, 56, 74);
    canvas.drawPath(
      mouth,
      Paint()
        ..color = Colors.black
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2
        ..strokeCap = StrokeCap.square,
    );

    final whiskers = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.square;
    for (final offset in [0.0, 8.0, 16.0]) {
      canvas.drawLine(
        Offset(25, 63 + offset / 2),
        Offset(8, 58 + offset),
        whiskers,
      );
      canvas.drawLine(
        Offset(75, 63 + offset / 2),
        Offset(92, 58 + offset),
        whiskers,
      );
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
