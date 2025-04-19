import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mr_perfiction_task/core/data/product_model.dart';
import 'package:mr_perfiction_task/feature/home/logic/home_cubit/home_cubit.dart';
import 'package:mr_perfiction_task/feature/home/logic/home_cubit/home_state.dart';
import 'package:mr_perfiction_task/feature/home/ui/widgets/product_grid.dart';

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final TextEditingController searchController = TextEditingController();

@override
void dispose() { 
  super.dispose();
  searchController.dispose();
}
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return Scaffold(
      appBar: AppBar(title: const Text('products'), centerTitle: true),
      body: Column(
        children: [
            Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            child: TextField(
              controller:searchController,
              decoration: const InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                cubit.search(value); 
               
              },
            ),
          ),
          Expanded(
            child: BlocConsumer<HomeCubit, HomeState>(
              listener: (context, state) {
               if (state is HomeErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.error),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              builder: (context, state) {
                if(state is HomeLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                }else if(state is HomeSuccessState){
                  List <ProductModel> products = state.products;  
                return ProductGrid(products: products, searchController: searchController,);
                }else{
                  return const Center(child: Text('No products found'));
                }    
              },
            ),
          ),
        ],
      ),
    );
  }
}

