import 'package:flutter/material.dart';

class PannelContent {
  PannelContent({
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
  bool isExpanded;
  bool canTapOnHeader;
  Color? backgroundColor;
  Color? splashColor;
  Color? highlightColor;
}
