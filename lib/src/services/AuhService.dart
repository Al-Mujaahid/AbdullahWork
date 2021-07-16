import 'package:figma_work/src/models/core/ServiceResponse.dart';
import 'package:figma_work/src/services/DioClient.dart';
import 'package:figma_work/utils/end_points.dart';

class AuthService {

  static final AuthService _authService = AuthService.createInstance();
  AuthService.createInstance();

  DiOClient _apiService;

  factory AuthService(DiOClient apiService) {
    _authService._apiService = apiService;
    return _authService;
  }

  Future<ServiceResponse> login(data) async {
    var response = await _apiService.makePostResquest(LOGIN_ENDPOINT, data);
    return ServiceResponse.fromMap(response.toJson());
  }
}