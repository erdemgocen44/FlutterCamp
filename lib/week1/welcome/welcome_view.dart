import 'dart:math';
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
            icon: const Icon(
              Icons.face,
            ),
          ),
        ],
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.add_call),
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
              shrinkWrap: true,
              children: [
                ExpandedContainer(randomColor: randomColor),
                ExpandedContainer(randomColor: randomColor),
                ExpandedContainer(randomColor: randomColor),
                ExpandedContainer(randomColor: randomColor),
                ExpandedContainer(randomColor: randomColor),
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Card(
                            child: ListTile(
                              onTap: () {},
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(_randomImageUrl),
                              ),
                              title: Text("$_appBarTitle" "$index"),
                              trailing:
                                  const Icon(Icons.arrow_circle_up_rounded),
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

class ExpandedContainer extends StatelessWidget {
  const ExpandedContainer({
    Key? key,
    required this.randomColor,
  }) : super(key: key);

  final MaterialColor randomColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Dismissible(
        key: UniqueKey(),
        background: Container(
          color: Colors.deepOrange,
        ),
        secondaryBackground: Container(
          color: Colors.amberAccent,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: 500,
          color: randomColor,
        ),
      ),
    );
  }
}
