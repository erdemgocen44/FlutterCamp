import 'package:flutter/material.dart';
import 'package:flutter_camp/core/image_manager.dart';

class HomeViewStateful extends StatefulWidget {
  @override
  _HomeViewStatefulState createState() => _HomeViewStatefulState();
}

class _HomeViewStatefulState extends State<HomeViewStateful> {
  bool _isLoading = true;
  late final ImageManager imageManager;

  @override
  void initState() {
    super.initState();
    waitForLoading();
    imageManager = ImageManager();
  }

  void waitForLoading() async {
    await Future.delayed(Duration(seconds: 3));
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
          AnimatedOpacity(
            opacity: _isLoading ? 0 : 1,
            duration: Duration(seconds: 1),
            child: Image.network(imageManager.randomImage),
          ),
        ],
      ),
    );
  }
}
