import 'package:dio/dio.dart';

mixin PaymentBehavior {
   Dio dio = Dio();
   bool isProcessing = false;
}