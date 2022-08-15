import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/network/cubit/orderState.dart';
import 'package:graduation_project/repository/auth_repository.dart';

class OrderCubit extends Cubit<OrderStates> {
  OrderCubit() : super(InitialState());

  static OrderCubit get(context) => BlocProvider.of(context);
  final authRepository = AuthRepository();
  final addressC = TextEditingController();

  void postConfirmedOrders(String id) async {
    emit(LoadingState());
    final response = await authRepository.confirmOrder(
        {'shippingAddress': addressC.text,}, id);
    response.fold(
          (error) => emit(ErrorState(error)),
          (response) {
        emit(SuccessState(response));
      },
    );
  }

}