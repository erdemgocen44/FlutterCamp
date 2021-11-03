import 'package:flutter/material.dart';

class ScroolBarSingle extends StatelessWidget {
  final Widget child;

  const ScroolBarSingle({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}
