import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mr_perfiction_task/core/data/product_model.dart';
import 'package:mr_perfiction_task/core/utils/extensions.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:  Icon(Icons.arrow_back),
          onPressed: () {
        
            context.pop();
          },
        ),
        title: const Text('Product Details'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
                height: 300.h,
                width: double.infinity,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60.r),
                    topLeft: Radius.circular(60.r),
                  
                  ),
                  border: Border.all(
                    color: Colors.grey,
                    width: 3.w,
                  ),
                  image: DecorationImage(
                  
                    image: NetworkImage(
                     product.image,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
                 Padding(
                   padding:  EdgeInsets.symmetric(
                      horizontal: 14.w,
                      vertical: 20.h, 
                   ),
                   child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Gap(20.h),
                       Text(product.title, style: TextStyle(
                        fontSize: 26.sp, fontWeight: FontWeight.bold,)),
                       Gap(10.h),
                       Text(product.description,maxLines: 7,
                       overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16.sp,color: const Color.fromARGB(255, 142, 142, 142))),
                       Gap(80.h),
                       Text('\$${product.price}', style: TextStyle(fontSize: 20.sp,color: Colors.green, fontWeight: FontWeight.bold),),
                       Gap(20.h),
                     ],
                   ),
                 ),
            ],
          ),
        ),
      ),
    );
  }
}