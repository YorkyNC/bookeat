import 'package:flutter/material.dart';

class RotatedOverlayCard extends StatelessWidget {
  final Widget child;
  final double rotation;
  final double offsetX;
  final double offsetY;
  final Color? backgroundColor;
  final double borderRadius;
  final EdgeInsets padding;

  const RotatedOverlayCard({
    super.key,
    required this.child,
    this.rotation = 0.0,
    this.offsetX = 0.0,
    this.offsetY = 0.0,
    this.backgroundColor,
    this.borderRadius = 16.0,
    this.padding = const EdgeInsets.all(16.0),
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(offsetX, offsetY),
      child: Transform.rotate(
        angle: rotation * (3.14159 / 180), // Convert degrees to radians
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: backgroundColor ?? Colors.white,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}

class StackedOverlayCards extends StatelessWidget {
  final List<RotatedOverlayCard> cards;
  final double stackHeight;
  final double stackWidth;

  const StackedOverlayCards({
    super.key,
    required this.cards,
    this.stackHeight = 300,
    this.stackWidth = 300,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: stackHeight,
      width: stackWidth,
      child: Stack(
        children: cards.map((card) => card).toList(),
      ),
    );
  }
}
