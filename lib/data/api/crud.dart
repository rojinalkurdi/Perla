import 'package:dio/dio.dart';

const baseUrl = "https://talebadmin.perla-tech.com";
const registerUrl = "$baseUrl/test/register";
const loginUrl = "$baseUrl/test/log_in";

class Crud {
  late Dio dio;

  Crud() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> PostMethod() async {
    try {
      Response response = await dio.post("/test/register");
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
