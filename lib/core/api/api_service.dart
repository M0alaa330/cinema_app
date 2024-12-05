import 'package:dio/dio.dart';

class ApiService {
  final String _baseurl = "https://api.themoviedb.org/3/";
  Dio dio;
  ApiService({required this.dio});
  Future<Map<String, dynamic>> getMovies(
      {required String endpoint, required String apikey}) async {
    var response = await dio.get("$_baseurl$endpoint$apikey");
    return response.data;
  }
}
