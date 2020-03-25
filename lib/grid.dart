import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Grid extends StatelessWidget {
  Grid();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: GridPainter());
  }
}

class GridPainter extends CustomPainter {
  GridPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(953.0000000000, 321.0000000000);

// 7:421 : Grid (COMPONENT)
    var draw_7_421 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          -953.0000000000,
          -321.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:-953,t:-321,r:953,b:953,w:267,h:267) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 7:414 : Vertical Grid (GROUP)
      var draw_7_414 = (Canvas canvas, Rect container) {
// 7:415 : Rectangle 3 (RECTANGLE)
        var draw_7_415 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(87.0000000000, 0.0, 8.0000000000,
              265.0000000000) /* H:SCALE V:SCALE F:(l:87,t:0,r:172,b:172,w:8,h:265) */;
          canvas.save();
          canvas.scale((container.width) / 267.0000000000,
              (container.height) / 267.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 8.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 265.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            Path()
              ..addRRect(RRect.fromRectAndRadius(
                  Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                  Radius.circular(4)))
          ];
          fillGeometry.forEach((path) {
            var effectPaint = _EffectCatalog.instance.paint_0;
            canvas.save();
            canvas.translate(0.0, 4.0000000000);
            canvas.drawPath(path, effectPaint);
            canvas.restore();
          });
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_7_415(canvas, frame);

// 7:416 : Rectangle 4 (RECTANGLE)
        var draw_7_416 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(176.0000000000, 2.0000000000, 8.0000000000,
              265.0000000000) /* H:SCALE V:SCALE F:(l:176,t:2,r:83,b:83,w:8,h:265) */;
          canvas.save();
          canvas.scale((container.width) / 267.0000000000,
              (container.height) / 267.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 8.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 265.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            Path()
              ..addRRect(RRect.fromRectAndRadius(
                  Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                  Radius.circular(4)))
          ];
          fillGeometry.forEach((path) {
            var effectPaint = _EffectCatalog.instance.paint_0;
            canvas.save();
            canvas.translate(0.0, 4.0000000000);
            canvas.drawPath(path, effectPaint);
            canvas.restore();
          });
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_7_416(canvas, frame);
      };
      draw_7_414(canvas, frame);

// 7:417 : Horizontal Grid (GROUP)
      var draw_7_417 = (Canvas canvas, Rect container) {
// 7:418 : Rectangle 3 (RECTANGLE)
        var draw_7_418 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(0.0, 180.0000000000, 8.0000000000,
              265.0000000000) /* H:SCALE V:SCALE F:(l:0,t:180,r:259,b:259,w:8,h:265) */;
          canvas.save();
          canvas.scale((container.width) / 267.0000000000,
              (container.height) / 267.0000000000);
          canvas.transform(Float64List.fromList([
            0.0000000119,
            1.0000000000,
            0.0,
            0.0,
            -1.0000000000,
            0.0000000119,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 8.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 265.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            Path()
              ..addRRect(RRect.fromRectAndRadius(
                  Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                  Radius.circular(4)))
          ];
          fillGeometry.forEach((path) {
            var effectPaint = _EffectCatalog.instance.paint_0;
            canvas.save();
            canvas.translate(0.0, 4.0000000000);
            canvas.drawPath(path, effectPaint);
            canvas.restore();
          });
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_7_418(canvas, frame);

// 7:419 : Rectangle 4 (RECTANGLE)
        var draw_7_419 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(2.0000010613, 91.0000000238, 8.0000000000,
              265.0000000000) /* H:SCALE V:SCALE F:(l:2.000001061314377,t:91.00000002384976,r:256.9999989386856,b:256.9999989386856,w:8,h:265) */;
          canvas.save();
          canvas.scale((container.width) / 267.0000000000,
              (container.height) / 267.0000000000);
          canvas.transform(Float64List.fromList([
            0.0000000119,
            1.0000000000,
            0.0,
            0.0,
            -1.0000000000,
            0.0000000119,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 8.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 265.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            Path()
              ..addRRect(RRect.fromRectAndRadius(
                  Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                  Radius.circular(4)))
          ];
          fillGeometry.forEach((path) {
            var effectPaint = _EffectCatalog.instance.paint_0;
            canvas.save();
            canvas.translate(0.0, 4.0000000000);
            canvas.drawPath(path, effectPaint);
            canvas.restore();
          });
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_7_419(canvas, frame);
      };
      draw_7_417(canvas, frame);
      canvas.restore();
    };
    draw_7_421(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(GridPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(GridPainter oldDelegate) {
    return false;
  }
}

class _PathCatalog {
  _PathCatalog() {}

  static final _PathCatalog instance = _PathCatalog();
}

class _PaintCatalog {
  _PaintCatalog() {
    this.paint_0 = (Paint()..color = _ColorCatalog.instance.color_1);
  }

  Paint paint_0;

  static final _PaintCatalog instance = _PaintCatalog();
}

class _EffectCatalog {
  _EffectCatalog() {
    this.paint_0 = Paint();
  }

  Paint paint_0;

  static final _EffectCatalog instance = _EffectCatalog();
}

class _ColorCatalog {
  _ColorCatalog() {
    this.color_0 = Color.fromARGB(0, 0, 0, 0);
    this.color_1 = Color.fromARGB(255, 227, 164, 16);
  }

  Color color_0;

  Color color_1;

  static final _ColorCatalog instance = _ColorCatalog();
}

class _TextStyleCatalog {
  _TextStyleCatalog() {}

  static final _TextStyleCatalog instance = _TextStyleCatalog();
}

class Data {
  Data({this.isVisible});

  final bool isVisible;

  @override
  bool operator ==(o) => o is Data && isVisible == o.isVisible;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    return result;
  }
}

class TextData extends Data {
  TextData({isVisible, this.text}) : super(isVisible: isVisible);

  final String text;

  @override
  bool operator ==(o) =>
      o is TextData && isVisible == o.isVisible && text == o.text;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    result = 37 * result + (this.text?.hashCode ?? 0);
    return result;
  }
}

class VectorData extends Data {
  VectorData({isVisible}) : super(isVisible: isVisible);

  @override
  bool operator ==(o) => o is VectorData && isVisible == o.isVisible;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    return result;
  }
}
