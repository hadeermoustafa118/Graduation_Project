import 'package:conditional_builder_rec/conditional_builder_rec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/endPoints.dart';
import 'package:graduation_project/layout/new_card_widget.dart';
import 'package:graduation_project/models/order_model.dart';
import 'package:graduation_project/network/cubit/appStates.dart';
import 'package:graduation_project/network/cubit/orderedStates.dart';
import 'package:graduation_project/network/cubit/user_data_cubit.dart';
import 'package:graduation_project/network/cubit/user_data_states.dart';

import '../network/cubit/appCubit.dart';
import '../network/cubit/orderedCubit.dart';
import 'homeScreen.dart';


class OrderedScreen extends StatelessWidget {
  static const routeName = 'ordered_screen';

  const OrderedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:    Column(
                      children: [
                        FittedBox(
                          child: NewCardWidget(
                              name: 'Blazer Jacket',
                              date: '',
                              imgUrl: '$BASEURL/product-d9d4e040-b96d-41ef-902c-36a5189a1203-1658709978964-1.jpeg',
                              title: 'Total : ${699 + 50} EGP',
                              price: 699,
                              size: '',
                              index: 0),
                        ),
                      ],
                    ),
                );
  }
}
