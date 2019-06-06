import 'package:flutter/material.dart';

class Comment {
  final String id;
  final String imgUrl;
  final String name;
  final String content;
  final double stars;

  Comment(
      {@required this.id,
      @required this.name,
      @required this.content,
      @required this.imgUrl,
      @required this.stars});
}

var commentList = [
  {
    'id': 'com-1',
    'name': 'Alejandra Rios',
    'stars': 3.0,
    'content': 'Aquí comenta lo que piensa de pizza gabo',
    'imgUrl': 'assets/comment-1.jpg',
  },
  {
    'id': 'com-2',
    'name': 'Andres Cuevas',
    'stars': 2.0,
    'content': 'Aquí comenta lo que piensa de pizza gabo',
    'imgUrl': 'assets/comment-2.jpg',
  },
  {
    'id': 'com-3',
    'name': 'Luisa Reyes',
    'stars': 4.0,
    'content': 'Aquí comenta lo que piensa de pizza gabo',
    'imgUrl': 'assets/comment-3.jpg',
  },
  {
    'id': 'com-4',
    'name': 'Roy Ferman',
    'stars': 5.0,
    'content':
        'Aquí comenta una reseña extensa del producto solicitado, especificando factores muy positivos que hacen que la gente se interese por comprar.',
    'imgUrl': 'assets/comment-4.jpg',
  },
  {
    'id': 'com-5',
    'name': 'Diana Lopez',
    'stars': 3.0,
    'content': 'Aquí comenta lo que piensa de pizza gabo',
    'imgUrl': 'assets/comment-5.jpg',
  },
  {
    'id': 'com-6',
    'name': 'Karla Martinez',
    'stars': 4.0,
    'content': 'Aquí comenta lo que piensa de pizza gabo',
    'imgUrl': 'assets/comment-6.jpg',
  },
  {
    'id': 'com-7',
    'name': 'Jessica Guardado',
    'stars': 5.0,
    'content': 'Aquí comenta lo que piensa de pizza gabo',
    'imgUrl': 'assets/comment-7.jpg',
  },
];
