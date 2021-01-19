import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  final int dotsCount;
  final int position;
  final DotsDecorator decorator;

  DotsIndicator({
    Key key,
    @required this.dotsCount,
    this.position = 0,
    this.decorator = const DotsDecorator(),
  })  : assert(dotsCount != null && dotsCount > 0),
        assert(position != null && position >= 0),
        assert(decorator != null),
        assert(
          position < dotsCount,
          "Position must be inferior than dotsCount",
        ),
        super(key: key);

  Widget _buildDot(int i) {
    final color = (i == position) ? decorator.activeColor : decorator.color;
    final size = (i == position) ? decorator.activeSize : decorator.size;
    final shape = (i == position) ? decorator.activeShape : decorator.shape;

    return Container(
      width: size.width,
      height: size.height,
      margin: decorator.spacing,
      decoration: ShapeDecoration(color: color, shape: shape),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(dotsCount, _buildDot),
    );
  }
}

const Size kDefaultSize = Size.square(9.0);
const EdgeInsets kDefaultSpacing = EdgeInsets.all(6.0);
const ShapeBorder kDefaultShape = CircleBorder();

class DotsDecorator {
  /// Inactive dot color
  ///
  /// @Default `Colors.grey`
  final Color color;

  /// Active dot color
  ///
  /// @Default `Colors.lightBlue`
  final Color activeColor;

  /// Inactive dot size
  ///
  /// @Default `Size.square(9.0)`
  final Size size;

  /// Active dot size
  ///
  /// @Default `Size.square(9.0)`
  final Size activeSize;

  /// Inactive dot shape
  ///
  /// @Default `CircleBorder()`
  final ShapeBorder shape;

  /// Active dot shape
  ///
  /// @Default `CircleBorder()`
  final ShapeBorder activeShape;

  /// Spacing between dots
  ///
  /// @Default `EdgeInsets.all(6.0)`
  final EdgeInsets spacing;

  const DotsDecorator({
    this.color = Colors.grey,
    this.activeColor = Colors.lightBlue,
    this.size = kDefaultSize,
    this.activeSize = kDefaultSize,
    this.shape = kDefaultShape,
    this.activeShape = kDefaultShape,
    this.spacing = kDefaultSpacing,
  })  : assert(color != null),
        assert(activeColor != null),
        assert(size != null),
        assert(activeSize != null),
        assert(shape != null),
        assert(activeShape != null),
        assert(spacing != null);
}