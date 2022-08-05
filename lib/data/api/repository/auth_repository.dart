import '../../model/request/register_request.dart';
import '../../model/response/register_response_model.dart';
import '../base_provider.dart';
import '../provider/auth_provider.dart';

class AuthRepository extends RestClient{
  AuthRepository({required this.authProvider});
  final AuthProvider authProvider;


  Future<RegisterResponse> register({required RegisterRequest data}) async {
    final res = await authProvider.register(path: 'auth/register', data: data);
    return RegisterResponse.fromJson(res.data);
  }
}