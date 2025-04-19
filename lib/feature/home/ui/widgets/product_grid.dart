import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mr_perfiction_task/core/utils/app_colors.dart';
import 'package:mr_perfiction_task/core/data/product_model.dart';
import 'package:mr_perfiction_task/feature/home/ui/widgets/product_card.dart';

class ProductGrid extends StatelessWidget {
   final TextEditingController searchController;
  const ProductGrid({
    super.key,
    required this.products, required this.searchController,
  });

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: GridView.builder(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10.w,
    
          mainAxisSpacing: 10.h,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(product: products[index], searchController: searchController,); }
      
      ),
    );
  }
}
