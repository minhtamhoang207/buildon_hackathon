import 'package:dio/dio.dart';

import '../../model/request/register_request.dart';
import '../base_provider.dart';


class AuthProvider{

  final RestClient restClient;
  AuthProvider({required this.restClient});


  Future<Response> register({required String path, required RegisterRequest data}) {
    return restClient.request(url: path, method: Method.POST, params: data.toJson());
  }
}