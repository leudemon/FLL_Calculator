import 'package:flutter/material.dart';

class CustomExpansionPanel {
  final Widget Function(BuildContext context, bool isExpanded) headerBuilder;
  final Widget body;
  bool isExpanded;
  final bool hasIcon;
  final Color? backgroundColor;
  final bool canTapOnHeader;

  CustomExpansionPanel({
    required this.headerBuilder,
    required this.body,
    this.isExpanded = false,
    this.hasIcon = false,
    this.backgroundColor,
    this.canTapOnHeader = false,
  });
}

class CustomExpansionPanelList extends StatelessWidget {
  final List<CustomExpansionPanel> children;
  final ExpansionPanelCallback? expansionCallback;
  final Duration animationDuration;
  final EdgeInsets expandedHeaderPadding;
  final Color? dividerColor;
  final double elevation;
  final Color? expandIconColor;
  final double materialGapSize;

  const CustomExpansionPanelList({
    super.key,
    required this.children,
    this.expansionCallback,
    this.animationDuration = kThemeAnimationDuration,
    this.expandedHeaderPadding = const EdgeInsets.all(16.0),
    this.dividerColor,
    this.elevation = 2,
    this.expandIconColor,
    this.materialGapSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: children.asMap().entries.map((entry) {
        final index = entry.key;
        final panel = entry.value;

        return Column(
          children: [
            InkWell(
              onTap: () {
                if (expansionCallback != null) {
                  expansionCallback!(index, !panel.isExpanded);
                }
              },
              child: ListTile(
                title: panel.headerBuilder(context, panel.isExpanded),
                trailing: panel.hasIcon ? const Icon(Icons.expand_more) : null,
              ),
            ),
            AnimatedCrossFade(
              firstChild: Container(),
              secondChild: panel.body,
              crossFadeState: panel.isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: animationDuration,
            ),
            Divider(
              color: dividerColor,
              height: 0,
              thickness: 1,
            ),
          ],
        );
      }).toList(),
    );
  }
}
