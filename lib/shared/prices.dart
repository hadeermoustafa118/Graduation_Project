import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/dummy_data.dart';
import 'package:graduation_project/endPoints.dart';
import 'package:graduation_project/network/cubit/appCubit.dart';
import 'package:graduation_project/network/cubit/appStates.dart';
import 'package:graduation_project/network/cubit/layoutCubit.dart';
import 'package:graduation_project/network/cubit/layoutStates.dart';
import 'package:graduation_project/network/cubit/orderCubit.dart';
import 'package:graduation_project/network/cubit/orderState.dart';
import 'package:graduation_project/screens/homeScreen.dart';
import 'package:graduation_project/shared/boxtextfield.dart';

class Prices extends StatelessWidget {

  @override
  Widget build(BuildContext context,) {
    return BlocConsumer<OrderCubit, OrderStates>(
        builder: (context, state) {
          var order = OrderCubit.get(context);
          return Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    'EGP 699',
                    style:Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Fee',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    'EGP 50',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                        fontSize: 22,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'EGP 749',
                    style: TextStyle(
                        fontSize: 22,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Text('Address',style: Theme.of(context).textTheme.bodyText1 ,),
              SizedBox(height: 10.0,),
              BoxTextField(padding:0,margin:0,controller: order.addressC, validatorText: 'Fill this field', icon: Icon(Icons.location_on_rounded, color: isDark? Colors.black: Colors.white,), onTap: (){})
            ],
          );
        },
        listener: (context, state) {});
  }
}
