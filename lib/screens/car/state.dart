import 'model.dart';

class CarState {}

class CarLoadingState extends CarState {}

class CarSuccessState extends CarState {
  final List<Car> list;
  CarSuccessState({required this.list});
}

class CarFailedState extends CarState {
  final String message;
  CarFailedState({required this.message});
}
