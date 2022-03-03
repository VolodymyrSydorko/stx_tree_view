import 'package:flutter/material.dart';

import 'custom_tree_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomTreeView());
  }
}
