
import '../../utils/app_url.dart';
import '../config/data/network/base_api_service.dart';
import '../config/data/network/network_services_api.dart';
import '../models/user/user_model.dart';
import 'auth_api_repository.dart';

/// Implementation of [AuthApiRepository] for making HTTP requests to the authentication API.
class AuthHttpApiRepository implements AuthApiRepository {
  final BaseApiService _apiServices = NetworkServicesApi();

  /// Sends a login request to the authentication API with the provided [data].
  ///
  /// Returns a [UserModel] representing the user data if the login is successful.
  @override
  Future<UserModel> loginApi(dynamic data) async {
    dynamic response = await _apiServices.postApi(AppUrl.loginEndPint, data);
    return UserModel.fromJson(response);
  }
}