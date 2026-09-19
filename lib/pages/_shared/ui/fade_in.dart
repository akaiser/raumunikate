import 'package:flutter/widgets.dart';

class const FadeIn({
  required final Widget _child,
  final int _millis = 200,
  super.key,
}) extends StatefulWidget {
  @override
  State<FadeIn> createState() => _FadeInState();
}

class _FadeInState extends State<FadeIn> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget._millis),
      vsync: this,
    );
  }

  @override
  void didChangeDependencies() {
    _controller.forward();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => FadeTransition(
    opacity: _controller.drive(CurveTween(curve: Curves.easeIn)),
    child: widget._child,
  );
}
