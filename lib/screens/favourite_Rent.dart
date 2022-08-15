import 'package:flutter/material.dart';
import 'package:graduation_project/shared/fav_list.dart';
import 'package:graduation_project/shared/listView.dart';

import '../endPoints.dart';
import '../layout/new_card_widget.dart';

class Favourite_Rent extends StatelessWidget {
  const Favourite_Rent({Key? key}) : super(key: key);
  static const routeName = 'list_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          child: Column(
              children: [
          FittedBox(
          child: NewCardWidget(
          name: 'hadeer',
              date: '',
              imgUrl: '$BASEURL/product-ba7bd941-f093-4215-b1cb-051a336a3dcc-1658711038820-1.jpeg',
              title: 'long dress',
              price: 300,
              size: 'large',
              isFav: true,
              index: 0),
        ) ,
        ],
      ),
    )));
  }
}
