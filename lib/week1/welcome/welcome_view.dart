import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);
  final _appBarTitle = "Instagram";
  final _randomImageUrl = "https://picsum.photos/200/300";
  MaterialColor get randomColor => Colors.primaries[Random().nextInt(17)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.face,
            ),
          ),
        ],
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_call),
            Text(
              _appBarTitle,
              style: Theme.of(context).primaryTextTheme.headline6!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: ListView(
              children: [
                expandedContainer(randomColor: randomColor),
                expandedContainer(randomColor: randomColor),
                expandedContainer(randomColor: randomColor),
                expandedContainer(randomColor: randomColor),
                expandedContainer(randomColor: randomColor),
                Expanded(
                  flex: 4,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: Card(
                            child: ListTile(
                              onTap: () {},
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(_randomImageUrl),
                              ),
                              title: Text("$_appBarTitle" "$index"),
                              trailing: Icon(Icons.arrow_circle_up_rounded),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class expandedContainer extends StatelessWidget {
  const expandedContainer({
    Key? key,
    required this.randomColor,
  }) : super(key: key);

  final MaterialColor randomColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: 500,
      color: randomColor,
    );
  }
}
