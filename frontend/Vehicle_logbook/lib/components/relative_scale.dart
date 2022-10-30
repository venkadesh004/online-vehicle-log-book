import 'package:flutter/material.dart';

mixin RelativeScale {
  double? _screenHeight;
  double? _screenWidth;

  double get screenHeight => _screenHeight!;
  double get screenWidth => _screenWidth!;


  initRelativeScaler(BuildContext context) {
    var size = MediaQuery.of(context).size;
    _screenHeight = size.height;
    _screenWidth = size.width;
  }

  double sy(double value) {
    return (_screenHeight! * _calculate(value)).roundToDouble();
  }

  double sx(double value) {
    return (_screenWidth! * _calculate(value)).roundToDouble();
  }

  double _calculate(double value) {
    return (value / 100) / 5.333333333333333;
  }
}

typedef _RelativeBuilderFunction = Widget Function(
    BuildContext,
    double,
    double,
    double Function(double),
    double Function(double),
    );

class RelativeBuilder extends StatelessWidget {
  final double scale;
  final _RelativeBuilderFunction builder;

  const RelativeBuilder({
    Key? key,
    required this.scale,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _RelativeBuilder(scale: scale, builder: builder);
  }
}

class _RelativeBuilder extends StatefulWidget {
  final double scale;
  final _RelativeBuilderFunction builder;

  const _RelativeBuilder({
    Key? key,
    required this.scale,
    required this.builder,
  }) : super(key: key);

  @override
  _RelativeBuilderState createState() => _RelativeBuilderState();
}

class _RelativeBuilderState extends State<_RelativeBuilder> {
  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      _screenHeight,
      _screenWidth,
      _sy,
      _sx,
    );
  }

  Size get _size {
    return MediaQuery.of(context).size;
  }

  double get _screenHeight => _size.height;
  double get _screenWidth => _size.width;

  double _sy(double value) {
    return (_screenHeight * _calculate(value)).roundToDouble();
  }

  double _sx(double value) {
    return (_screenWidth * _calculate(value)).roundToDouble();
  }

  double _calculate(double value) {
    return ((value / 100) / 5.333333333333333) * (widget.scale);
  }
}
