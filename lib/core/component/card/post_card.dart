import 'package:flutter/material.dart';
import 'package:flutter_camp/week2/post/model/post_model.dart';

class PostCard extends StatelessWidget {
  final PostModel? model;

  const PostCard({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(model?.id.toString() ?? ""),
        ),
        title: (Text(model?.title ?? "")),
      ),
    );
  }
}
