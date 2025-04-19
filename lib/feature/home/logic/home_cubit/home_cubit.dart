import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mr_perfiction_task/core/network/dio_helper.dart';
import 'package:mr_perfiction_task/core/data/product_model.dart';
import 'package:mr_perfiction_task/feature/home/logic/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

List<ProductModel> allProjects =[]; 


  Future<void> getProducts() async {
    try {
      emit(HomeLoadingState());
      
      final response = await DioHelper.getData(url: '/products');
      print('API Response: ${response.data}');
      
      List<ProductModel> products = (response.data as List)
          .map((productJson) => ProductModel.fromJson(productJson))
          .toList();
          allProjects = products;
      emit(HomeSuccessState(products: products));
    } catch (e) {
      print(e.toString());
      emit(HomeErrorState(error: e.toString()));
    }
  }

// void loadProduct(){
//   emit(HomeLoadingState());

//   Future.delayed(Duration(seconds: 1), () {
//    allProjects = [

//    ];
//   });
// }

void search (String query) {
  final result = allProjects.where((p) => p.title.toLowerCase().contains(query.toLowerCase())).toList();
  emit(HomeSuccessState(products: result));
}
}
