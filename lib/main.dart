import 'package:flutter/material.dart';
import 'package:flutter_camp/week1/welcome/welcome_view.dart';
import 'package:flutter_camp/week2/statefull/home_statefull_view.dart';

import 'week2/post/post_json_place_holder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Camp',
      home: PostJsonPlaceHolder(),
    );
  }
}
