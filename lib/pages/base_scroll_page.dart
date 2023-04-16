import 'package:flutter/material.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_base_page.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

class BaseScrollPage extends StatelessWidget {
  const BaseScrollPage({
    this.preferListView = false,
    required this.children,
    super.key,
  });

  final bool preferListView;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final _children = [
      const SizedBox(height: navigationBarHeightExpanded),
      ...children,
      const SizedBox(height: 16),
      const Divider(),
      const SizedBox(height: 8),
      const Footer(),
    ];
    return ResponsiveLayout(
      xl: (_) => _BaseScrollPage(
        preferListView: preferListView,
        padding: const EdgeInsets.symmetric(horizontal: 300),
        children: _children,
      ),
      l: (_) => _BaseScrollPage(
        preferListView: preferListView,
        padding: const EdgeInsets.symmetric(horizontal: 200),
        children: _children,
      ),
      xs: (_) => _BaseScrollPage(
        preferListView: preferListView,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: _children,
      ),
    );
  }
}

class _BaseScrollPage extends StatelessWidget {
  const _BaseScrollPage({
    required this.preferListView,
    required this.padding,
    required this.children,
  });

  final bool preferListView;
  final EdgeInsetsGeometry padding;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => BasePage(
        child: DefaultTextStyle.merge(
          style: context.tt.body?.copyWith(color: mainTODO_0),
          child: preferListView
              ? _ListView(padding: padding, children: children)
              : _SingleChildScrollView(padding: padding, children: children),
        ),
      );
}

class _ListView extends StatelessWidget {
  const _ListView({
    required this.padding,
    required this.children,
  });

  final EdgeInsetsGeometry padding;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => ListView.builder(
        padding: padding,
        itemCount: children.length,
        itemBuilder: (_, index) => children[index],
      );
}

class _SingleChildScrollView extends StatelessWidget {
  const _SingleChildScrollView({
    required this.padding,
    required this.children,
  });

  final EdgeInsetsGeometry padding;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      );
}
