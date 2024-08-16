import 'package:dio/dio.dart';
import 'package:user_details/Model/User_model.dart';


class UserRepository {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<User>> fetchUsers() async {
    try {
      final response = await _dio.get('$_baseUrl/users');
      final List<dynamic> userJsonList = response.data;
      return userJsonList.map((json) => User.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load users: $e');
    }
  }
}
