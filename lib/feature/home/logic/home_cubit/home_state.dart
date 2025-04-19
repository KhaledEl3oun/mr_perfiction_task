import 'package:mr_perfiction_task/core/data/product_model.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
 final List<ProductModel> products;

  HomeSuccessState({required this.products});
  
}

class HomeErrorState extends HomeState {
  final String error;

  HomeErrorState({required this.error});
}