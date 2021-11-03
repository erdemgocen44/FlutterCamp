import 'package:flutter/material.dart';
import 'package:flutter_camp/core/component/card/user_card.dart';
import 'package:flutter_camp/core/component/opacity/image_opacity.dart';
import 'package:flutter_camp/core/enum/duration_enum.dart';
import 'package:flutter_camp/core/image_manager.dart';
import 'package:flutter_camp/week2/statefull/model/user.dart';
import 'package:flutter_camp/week2/stateless/home_detail_stateless.dart';

class HomeViewStateful extends StatefulWidget {
  @override
  _HomeViewStatefulState createState() => _HomeViewStatefulState();
}

class _HomeViewStatefulState extends State<HomeViewStateful> {
  bool _isLoading = true;
  late final ImageManager imageManager;
  late final User user;

  @override
  void initState() {
    super.initState();
    waitForLoading();
    imageManager = ImageManager();
    user = User.fakeItem();
  }

  void waitForLoading() async {
    await Future.delayed(DurationEnums.NORMAL.time);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _isLoading ? CircularProgressIndicator() : FlutterLogo(),
          ImageOpacity(url: imageManager.randomImage),
          UserCard(
            user: user,
            onPressed: () {
              _navigateDetail();
            },
          ),
        ],
      ),
    );
  }

  void _navigateDetail() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomeDetailStsteless(model: user)));
  }
}
