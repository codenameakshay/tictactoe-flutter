import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Card extends StatelessWidget {
  Card();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: CardPainter());
  }
}

class CardPainter extends CustomPainter {
  CardPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(974.0000000000, 5.0000000000);

// 7:423 : Card (COMPONENT)
    var draw_7_423 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          -974.0000000000,
          -5.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:-974,t:-5,r:974,b:974,w:308,h:324) */;
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

// 7:422 : Card (RECTANGLE)
      var draw_7_422 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(0.0, 0.0, 308.0000000000,
            324.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:308,h:324) */;
        canvas.save();
        canvas.scale((container.width) / 308.0000000000,
            (container.height) / 324.0000000000);
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
          (frame.width / 308.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 324.0000000000),
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
                Radius.circular(25)))
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
      draw_7_422(canvas, frame);
      canvas.restore();
    };
    draw_7_423(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(CardPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(CardPainter oldDelegate) {
    return false;
  }
}

class _PathCatalog {
  _PathCatalog() {}

  static final _PathCatalog instance = _PathCatalog();
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
      ..maskFilter = MaskFilter.blur(
          BlurStyle.normal, Shadow.convertRadiusToSigma(10)));
  }

  Paint paint_0;

  static final _EffectCatalog instance = _EffectCatalog();
}

class _ColorCatalog {
  _ColorCatalog() {
    this.color_0 = Color.fromARGB(0, 0, 0, 0);
    this.color_1 = Color.fromARGB(63, 0, 0, 0);
    this.color_2 = Color.fromARGB(255, 222, 220, 202);
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
