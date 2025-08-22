import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/panel_content.dart';

class ExpansionPanels extends StatefulWidget {
  const ExpansionPanels({
    super.key,
    required this.content,
    this.expandedColor,
  });

  final List<PanelContent> content;
  final Color? expandedColor;

  @override
  State<StatefulWidget> createState() => _ExpansionPanelsState();
}

class _ExpansionPanelsState extends State<ExpansionPanels> {
  late List<PanelContent> _contentList;
  late Color _expandedColor;

  @override
  void initState() {
    super.initState();
    _contentList = widget.content;
    _expandedColor = widget.expandedColor ?? Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Container(child: _panels()));
  }

  Widget _panels() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _contentList[index].isExpanded = isExpanded;
        });
      },
      children:
          _contentList.map<ExpansionPanel>((PanelContent panelContent) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return panelContent.header;
              },
              body: panelContent.body,
              isExpanded: panelContent.isExpanded,
              canTapOnHeader: panelContent.canTapOnHeader,
              backgroundColor:
                  panelContent.isExpanded
                      ? _expandedColor
                      : panelContent.backgroundColor,
              splashColor: panelContent.splashColor,
              highlightColor: panelContent.highlightColor,
            );
          }).toList(),
    );
  }
}
