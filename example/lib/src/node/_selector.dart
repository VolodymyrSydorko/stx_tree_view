part of 'tree_node_tile.dart';

class _NodeSelector extends StatelessWidget {
  const _NodeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = TreeNodeScope.of(context).node.id;
    final appController = AppController.of(context);

    return AnimatedBuilder(
      animation: appController,
      builder: (_, __) {
        return Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Checkbox(
            value: appController.isSelected(id),
            onChanged: (_) => appController.toggleSelection(id),
            activeColor: Colors.green.shade600,
            splashRadius: 0,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
          ),
        );
      },
    );
  }
}
