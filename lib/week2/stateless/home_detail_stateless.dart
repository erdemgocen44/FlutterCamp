import 'package:flutter/material.dart';
import 'package:flutter_camp/core/component/scroll/scrool_bar_single.dart';
import 'package:flutter_camp/week2/statefull/model/user.dart';

class HomeDetailStsteless extends StatelessWidget {
  final User model;

  const HomeDetailStsteless({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: ScroolBarSingle(
        child: Text(model.storyText),
      ),
    );
  }
}
