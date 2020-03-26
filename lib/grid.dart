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
    canvas.translate(953.0000000000, 313.0000000000);

// 20:3 : Grid (COMPONENT)
    var draw_20_3 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          -953.0000000000,
          -313.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:-953,t:-313,r:953,b:953,w:267,h:267) */;
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

// 20:1 : Vector (VECTOR)
      var draw_20_1 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(0.0, 0.0, 267.0000000000,
            267.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:267,h:267) */;
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
          (frame.width / 267.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 267.0000000000),
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
          _PathCatalog.instance.path_0.transform(transform),
          _PathCatalog.instance.path_1.transform(transform),
          _PathCatalog.instance.path_2.transform(transform),
          _PathCatalog.instance.path_3.transform(transform)
        ];
        // fillGeometry.forEach((path) {
        //   var effectPaint1 = _EffectCatalog.instance.paint_0;
        //   canvas.save();
        //   canvas.translate(0.0, 4.0000000000);
        //   canvas.drawPath(path, effectPaint1);
        //   canvas.restore();});
        
        fillGeometry.forEach((path) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        });
        canvas.restore();
        fillGeometry.forEach((path) {
          // var effectPaint2 = _EffectCatalog.instance.paint_1;
          // canvas.save();
          // canvas.translate(0.0, 0.0000000000);
          // canvas.scale(1.132,1.205);
          // canvas.drawPath(path, effectPaint2);
          // canvas.restore();
          var effectPaint1 = _EffectCatalog.instance.paint_2;
          canvas.save();
          canvas.translate(0.0, 0.0000000000);
          canvas.scale(container.width/266.78763,container.height/267.22024);
          canvas.drawPath(path, effectPaint1);
          canvas.restore();
        });
      };
      draw_20_1(canvas, frame);
      canvas.restore();
    };
    draw_20_3(canvas, frame);
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
  _PathCatalog() {
    this.path_0 = _build_0();
    this.path_1 = _build_1();
    this.path_2 = _build_2();
    this.path_3 = _build_3();
  }

  Path path_0;

  Path path_1;

  Path path_2;

  Path path_3;

  static final _PathCatalog instance = _PathCatalog();

  static Path _build_0() {
    var path = Path();
    path.moveTo(87.0000000000, 4.0000000000);
    path.cubicTo(
        87.0000000000, 1.7908600000, 88.7909000000, 0.0, 91.0000000000, 0.0);
    path.cubicTo(93.2091000000, 0.0, 95.0000000000, 1.7908600000, 95.0000000000,
        4.0000000000);
    path.lineTo(95.0000000000, 261.0000000000);
    path.cubicTo(95.0000000000, 263.2090000000, 93.2091000000, 265.0000000000,
        91.0000000000, 265.0000000000);
    path.cubicTo(88.7909000000, 265.0000000000, 87.0000000000, 263.2090000000,
        87.0000000000, 261.0000000000);
    path.lineTo(87.0000000000, 4.0000000000);
    path.close();
    return path;
  }

  static Path _build_1() {
    var path = Path();
    path.moveTo(176.0000000000, 6.0000000000);
    path.cubicTo(176.0000000000, 3.7908600000, 177.7910000000, 2.0000000000,
        180.0000000000, 2.0000000000);
    path.cubicTo(182.2090000000, 2.0000000000, 184.0000000000, 3.7908600000,
        184.0000000000, 6.0000000000);
    path.lineTo(184.0000000000, 263.0000000000);
    path.cubicTo(184.0000000000, 265.2090000000, 182.2090000000, 267.0000000000,
        180.0000000000, 267.0000000000);
    path.cubicTo(177.7910000000, 267.0000000000, 176.0000000000, 265.2090000000,
        176.0000000000, 263.0000000000);
    path.lineTo(176.0000000000, 6.0000000000);
    path.close();
    return path;
  }

  static Path _build_2() {
    var path = Path();
    path.moveTo(4.0000000000, 180.0000000000);
    path.cubicTo(1.7908600000, 180.0000000000, -0.0000000263, 178.2090000000,
        0.0, 176.0000000000);
    path.cubicTo(0.0000000263, 173.7910000000, 1.7908600000, 172.0000000000,
        4.0000000000, 172.0000000000);
    path.lineTo(261.0000000000, 172.0000000000);
    path.cubicTo(263.2090000000, 172.0000000000, 265.0000000000, 173.7910000000,
        265.0000000000, 176.0000000000);
    path.cubicTo(265.0000000000, 178.2090000000, 263.2090000000, 180.0000000000,
        261.0000000000, 180.0000000000);
    path.lineTo(4.0000000000, 180.0000000000);
    path.close();
    return path;
  }

  static Path _build_3() {
    var path = Path();
    path.moveTo(6.0000000000, 91.0000000000);
    path.cubicTo(3.7908600000, 91.0000000000, 2.0000000000, 89.2091000000,
        2.0000000000, 87.0000000000);
    path.cubicTo(2.0000000000, 84.7909000000, 3.7908600000, 83.0000000000,
        6.0000000000, 83.0000000000);
    path.lineTo(263.0000000000, 83.0000000000);
    path.cubicTo(265.2090000000, 83.0000000000, 267.0000000000, 84.7909000000,
        267.0000000000, 87.0000000000);
    path.cubicTo(267.0000000000, 89.2091000000, 265.2090000000, 91.0000000000,
        263.0000000000, 91.0000000000);
    path.lineTo(6.0000000000, 91.0000000000);
    path.close();
    return path;
  }
}

class _PaintCatalog {
  _PaintCatalog() {
    this.paint_0 = (Paint()..color = _ColorCatalog.instance.color_2);
  }

  Paint paint_0;

  static final _PaintCatalog instance = _PaintCatalog();
}

class _EffectCatalog {
  _EffectCatalog() {
    this.paint_0 = (Paint()
      ..color = _ColorCatalog.instance.color_1
      ..maskFilter =
          MaskFilter.blur(BlurStyle.normal, Shadow.convertRadiusToSigma(10)));
    this.paint_1 = Paint()
      ..color = _ColorCatalog.instance.color_1
      ..maskFilter =
          MaskFilter.blur(BlurStyle.outer, Shadow.convertRadiusToSigma(20));
    this.paint_2 = Paint()
      ..color = Colors.black54
      ..maskFilter =
          MaskFilter.blur(BlurStyle.inner, 15);
  }

  Paint paint_0;

  Paint paint_1;

  Paint paint_2;

  static final _EffectCatalog instance = _EffectCatalog();
}

class _ColorCatalog {
  _ColorCatalog() {
    this.color_0 = Color.fromARGB(0, 0, 0, 0);
    this.color_1 = Color.fromARGB(63, 0, 0, 0);
    this.color_2 = Color.fromARGB(255, 255, 183, 0);
  }

  Color color_0;

  Color color_1;

  Color color_2;

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
