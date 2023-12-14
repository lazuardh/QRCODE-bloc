import 'package:flutter/widgets.dart';

import '../utils/color.dart';

class BuildContainerButton extends StatelessWidget {
  const BuildContainerButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  final Function() onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: primaryColor100,
          borderRadius: BorderRadiusDirectional.circular(10),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
