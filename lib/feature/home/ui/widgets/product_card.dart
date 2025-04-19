import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mr_perfiction_task/core/data/product_model.dart';
import 'package:mr_perfiction_task/core/utils/app_colors.dart';
import 'package:mr_perfiction_task/feature/home/logic/home_cubit/home_cubit.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final TextEditingController searchController;
   ProductCard({super.key, required this.product, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/detailsScreen', arguments: product);
        searchController.clear();
        context.read<HomeCubit>().search('');
      },
      child: Container(
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      
                      height: 150.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.grey,
                          width: 3,
                        ),
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        image: DecorationImage(
                          image: NetworkImage(product.image),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Gap(15.h),
                    Text(product.title.split(' ').length > 2 ? product.title.split(' ').sublist(0, 2).join(' ') : product.title,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(5.h),
                    Text('\$${product.price}',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
    );
  }
}