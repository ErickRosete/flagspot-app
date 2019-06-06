import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/comment.dart';
import '../ui_elements/rating.dart';

class RestaurantComments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Comment> comments = commentList
        .map((com) => Comment(
              id: com['id'],
              imgUrl: com['imgUrl'],
              name: com['name'],
              content: com['content'],
              stars: com['stars'],
            ))
        .toList();

    return ListView.builder(
      itemCount: comments.length,
      itemBuilder: (context, position) {
        return CommentCard(comments[position]);
      },
    );
  }
}

class CommentCard extends StatelessWidget {
  final double fontSize = 16.0;
  final double margin = 6.0;
  final Comment comment;
  CommentCard(this.comment);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage(comment.imgUrl),
                backgroundColor: Colors.transparent,
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Row(children: <Widget>[
                        Text(
                          comment.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontSize + 1.0),
                        ),
                        Expanded(child: Container()),
                        Rating(comment.stars.round())
                      ]),
                    ),
                    Text(
                      comment.content,
                      style: TextStyle(fontSize: fontSize),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
