import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stx_tree_view/stx_tree_view.dart';

import '../app_controller.dart';

part '_selector.dart';
part '_title.dart';

class TreeNodeTile extends StatefulWidget {
  const TreeNodeTile({Key? key}) : super(key: key);

  @override
  _TreeNodeTileState createState() => _TreeNodeTileState();
}

class _TreeNodeTileState extends State<TreeNodeTile> {
  @override
  Widget build(BuildContext context) {
    final appController = AppController.of(context);
    final nodeScope = TreeNodeScope.of(context);

    return SizedBox(
      height: 40,
      child: InkWell(
        onTap: () => appController.toggleSelection(nodeScope.node.id),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const [
            LinesWidget(),
            NodeWidgetLeadingIcon(
              showExpandIconIfEmpty: true,
              expandIcon: Icon(
                FontAwesomeIcons.chevronRight,
                size: 12,
                key: ValueKey(1),
              ),
              collapseIcon: Icon(
                FontAwesomeIcons.chevronDown,
                size: 12,
                key: ValueKey(2),
              ),
              leafIcon: Icon(null, size: 12),
              splashRadius: 15,
              padding: EdgeInsets.all(0.0),
            ),
            _NodeSelector(),
            _NodeTitle(),
          ],
        ),
      ),
    );
  }

  // void _describeAncestors(TreeNode node) {
  //   final ancestors = node.ancestors.map((ancestor) => ancestor.id).join('/');

  //   showSnackBar(
  //     context,
  //     'Path of "${node.label}": /$ancestors/${node.id}',
  //     duration: const Duration(seconds: 3),
  //   );
  // }
}
