import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mr_perfiction_task/core/routing/app_router.dart';
import 'package:mr_perfiction_task/core/utils/app_colors.dart';
import 'package:mr_perfiction_task/feature/home/logic/home_cubit/home_cubit.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => HomeCubit()..getProducts(),
        child: MaterialApp(
          showSemanticsDebugger: false,
          title: 'task',
          theme: ThemeData(
            primaryColor: AppColors.primary,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: '/',
        ),
      ),
    );
  }
}
