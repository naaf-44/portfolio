import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ScrollAnimatedWidget extends StatefulWidget {
  final Widget child;
  final String id;
  final Duration delay;
  final Duration duration;
  final Curve curve;
  final Offset? slideBegin;
  final double? scaleBegin;
  final bool enableShimmer;
  final double visibilityThreshold;

  const ScrollAnimatedWidget({
    super.key,
    required this.child,
    required this.id,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 800),
    this.curve = Curves.easeOutBack,
    this.slideBegin,
    this.scaleBegin,
    this.enableShimmer = true,
    this.visibilityThreshold = 0.3,
  });

  @override
  State<ScrollAnimatedWidget> createState() => _ScrollAnimatedWidgetState();
}

class _ScrollAnimatedWidgetState extends State<ScrollAnimatedWidget>
    with SingleTickerProviderStateMixin {
  bool _isVisible = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onVisibilityChanged(VisibilityInfo info) {
    if (info.visibleFraction >= widget.visibilityThreshold && !_isVisible) {
      setState(() {
        _isVisible = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.id),
      onVisibilityChanged: _onVisibilityChanged,
      child: _isVisible
          ? _buildAnimatedChild()
          : Opacity(
              opacity: 0,
              child: widget.child,
            ),
    );
  }

  Widget _buildAnimatedChild() {
    var animatedChild = widget.child.animate(delay: widget.delay)
        .fadeIn(duration: widget.duration, curve: widget.curve);

    if (widget.slideBegin != null) {
      if (widget.slideBegin!.dx != 0) {
        animatedChild = animatedChild.slideX(
          begin: widget.slideBegin!.dx,
          curve: widget.curve,
        );
      }
      if (widget.slideBegin!.dy != 0) {
        animatedChild = animatedChild.slideY(
          begin: widget.slideBegin!.dy,
          curve: widget.curve,
        );
      }
    }

    if (widget.scaleBegin != null) {
      animatedChild = animatedChild.scale(
        begin: Offset(widget.scaleBegin!, widget.scaleBegin!),
        curve: widget.curve,
      );
    }

    if (widget.enableShimmer) {
      animatedChild = animatedChild
          .then(delay: const Duration(milliseconds: 500))
          .shimmer(duration: const Duration(milliseconds: 1500));
    }

    return animatedChild;
  }
}