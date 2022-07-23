
import 'package:flutter/material.dart';
import 'package:perfect_freehand/perfect_freehand.dart';

class Stroke {
  List<Point> points;
  Color color;
  double strokeWidth;

  Stroke({
    required this.points,
    required this.color,
    required this.strokeWidth,
  });

  addPoint(Offset offset, [ double pressure = 0.5 ]) {
    points.add(Point(offset.dx, offset.dy, pressure));
  }

  List<Offset> getPolygon() {
    return getStroke(points)
      .map((Point point) => Offset(point.x, point.y))
      .toList(growable: false);
  }
}