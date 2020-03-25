import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Body extends StatelessWidget {
  Body();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: BodyPainter());
  }
}

class BodyPainter extends CustomPainter {
  BodyPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(607.0000000000, 270.0000000000);

// 7:279 : Body (COMPONENT)
    var draw_7_279 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          -607.0000000000,
          -270.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:-607,t:-270,r:607,b:607,w:360,h:589) */;
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

// 7:132 : Body (RECTANGLE)
      var draw_7_132 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(0.0, 0.0, 360.0000000000,
            589.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:360,h:589) */;
        canvas.save();
        canvas.scale((container.width) / 360.0000000000,
            (container.height) / 589.0000000000);
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
          (frame.width / 360.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 589.0000000000),
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
          (Path()..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
        ];
        fillGeometry.forEach((path) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        });
        fillGeometry.forEach((path) {
          canvas.drawPath(
              path,
              (Paint()
                ..shader = LinearGradient(
                        begin: Alignment(0, -1),
                        end: Alignment(0, 0.9999999999999998),
                        stops: [0, 1],
                        colors: [
                          _ColorCatalog.instance.color_2,
                          _ColorCatalog.instance.color_3
                        ],
                        tileMode: TileMode.clamp)
                    .createShader(Offset.zero & frame.size)));
        });
        canvas.restore();
      };
      draw_7_132(canvas, frame);
      canvas.restore();
    };
    draw_7_279(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(BodyPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(BodyPainter oldDelegate) {
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
  _EffectCatalog() {}

  static final _EffectCatalog instance = _EffectCatalog();
}

class _ColorCatalog {
  _ColorCatalog() {
    this.color_0 = Color.fromARGB(0, 0, 0, 0);
    this.color_1 = Color.fromARGB(255, 179, 174, 162);
    this.color_2 = Color.fromARGB(204, 235, 73, 52);
    this.color_3 = Color.fromARGB(204, 245, 176, 2);
  }

  Color color_0;

  Color color_1;

  Color color_2;

  Color color_3;

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
