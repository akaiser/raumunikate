import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_base_page.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

class BaseScrollPage extends StatelessWidget {
  const BaseScrollPage({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final _children = [
      const SizedBox(height: navigationBarHeightExpanded),
      ...children,
      const SizedBox(height: 16),
      const Footer(),
    ];
    return ResponsiveLayout(
      xl: (_) => _BaseScrollPage(
        padding: const EdgeInsets.symmetric(horizontal: 300),
        children: _children,
      ),
      l: (_) => _BaseScrollPage(
        padding: const EdgeInsets.symmetric(horizontal: 200),
        children: _children,
      ),
      xs: (_) => _BaseScrollPage(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: _children,
      ),
    );
  }
}

class _BaseScrollPage extends StatelessWidget {
  const _BaseScrollPage({
    required this.padding,
    required this.children,
  });

  final EdgeInsetsGeometry padding;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => BasePage(
        child: SingleChildScrollView(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      );
}
