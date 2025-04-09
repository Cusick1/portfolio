import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/pannel_content.dart';

class ExpansionPannels extends StatefulWidget {
  const ExpansionPannels({super.key, required this.content});

  final List<PannelContent> content;

  @override
  State<StatefulWidget> createState() => _ExpansionPannelsState();
}

class _ExpansionPannelsState extends State<ExpansionPannels> {
  late List<PannelContent> _contentList;

  @override
  void initState() {
    super.initState();
    _contentList = widget.content;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Container(child: _pannels()));
  }

  Widget _pannels() {
    return ExpansionPanelList(
      children:
          _contentList.map<ExpansionPanel>((PannelContent pannelContent) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return pannelContent.header;
              },
              body: pannelContent.body,
              isExpanded: pannelContent.isExpanded,
              canTapOnHeader: pannelContent.canTapOnHeader,
              backgroundColor: pannelContent.backgroundColor,
              splashColor: pannelContent.splashColor,
              highlightColor: pannelContent.highlightColor,
            );
          }).toList(),
    );
  }
}
