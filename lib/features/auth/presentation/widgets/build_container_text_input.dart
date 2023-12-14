import 'package:flutter/material.dart';

import '../utils/color.dart';

class BuildContainerTextInput extends StatelessWidget {
  const BuildContainerTextInput({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor200, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
