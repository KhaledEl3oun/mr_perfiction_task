import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio(); // تأكد من تهيئة Dio هنا

  // يمكن إضافة الإعدادات مثل الـ baseUrl وغيره هنا إذا كان موجود
  static Future<Response> getData({required String url}) async {
    try {
      dio.options.baseUrl = 'https://fakestoreapi.com'; // تغيير baseUrl إذا لزم الأمر
      return await dio.get(url);
    } catch (e) {
      throw Exception("Error: $e");
    }
  }

  // هنا يمكن إضافة المزيد من الدوال مثل postData وغيرها
}
