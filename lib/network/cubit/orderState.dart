import 'package:graduation_project/core/services/api/errors/server_error.dart';
import 'package:graduation_project/models/orderyModel.dart';

abstract class OrderStates{}
class InitialState extends OrderStates{}
class LoadingState extends OrderStates{}

class ErrorState extends OrderStates{
  final ServerError error;
  ErrorState(this.error);
}
class SuccessState extends OrderStates{
  final Ordery response;
  SuccessState(this.response);
}

