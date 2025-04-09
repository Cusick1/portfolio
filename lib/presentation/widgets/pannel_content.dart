import 'package:flutter/material.dart';

class PannelContent {
  const PannelContent({
    required this.header,
    required this.body,
    this.isExpanded = false,
    this.canTapOnHeader = false,
    this.backgroundColor,
    this.splashColor,
    this.highlightColor,
  });

  final Widget header;
  final Widget body;
  final bool isExpanded;
  final bool canTapOnHeader;
  final Color? backgroundColor;
  final Color? splashColor;
  final Color? highlightColor;
}
