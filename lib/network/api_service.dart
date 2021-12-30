import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as DioApi;
import 'package:project_beta/constants/dio_errors.dart';
import 'package:project_beta/network/api_endpoint.dart';
import 'package:project_beta/utils/shared_preference_local_storage.dart';

class ApiService {
  static late Dio _dio;

  static void init() async {
    try {
      var accessToken = await SharedPreferenceLocalStorage.getAccessToken();
      var options = BaseOptions(
        baseUrl: ApiEndpoint.HOST_URL,
        followRedirects: false,
        connectTimeout: 10000,
      );
      // validateStatus: (status) => true,

      _dio = Dio(options);

      print("auth : $accessToken");
      // _dio.options.headers["Authorization"] =
      //     "Bearer QTu06DTT602w0pBlEutmcKykXcrU0rTX";
      _dio.options.headers["Authorization"] =
          "Bearer " + accessToken.toString();
      _dio.options.headers["Content-Type"] =
          "application/x-www-form-urlencoded";
    } catch (e) {
      print(e);
    }
  }

  static _checkForTokenAuthorizationError(DioError err) async {
    print("error for API CALL : $err");
    if (err.message == DioErrors.DIO_ERROR_401) {
      await SharedPreferenceLocalStorage.setAccessToken("");
      await SharedPreferenceLocalStorage.setAccessTokenType("");
      await SharedPreferenceLocalStorage.setRefreshToken("");
      await SharedPreferenceLocalStorage.setRefreshTime(null);
      await SharedPreferenceLocalStorage.setLastRefreshTime(null);
      print("in in block");
      getAuthToken();
    }
  }

  static Future<bool> _isAuthTokenValid() async {
    var accessToken = await SharedPreferenceLocalStorage.getAccessToken();
    if (accessToken == null) {
      return false;
    }
    if (accessToken.toString().trim().isEmpty) {
      return false;
    }
    // check case if token is expired !!!
    var lastRefreshTime =
        await SharedPreferenceLocalStorage.getLastRefreshTime();
    if (lastRefreshTime == null) {
      return false;
    }
    var currentTime = DateTime.now().hour;
    var remainingHours = lastRefreshTime - currentTime;
    if (remainingHours < 2) {
      return false;
    }
    return true;
  }

  static Future<dynamic> postRequest({
    required endpoint,
    param: const {"": ""},
  }) async {
    try {
      print("--------------------");
      print("REQUEST TYPE : POST ");
      print("REQUEST END POINT : $endpoint");
      print("REQUEST DATA : $param");

      DioApi.Response response = await _dio.post(endpoint, data: param);
      print(response.statusCode);
      return response.statusCode;
    } on DioError catch (err) {
      print(err);
      await _checkForTokenAuthorizationError(err);
      return null;
    }
  }

  static Future<dynamic> putRequest(
      {required endpoint, param: const {"": ""}, id}) async {
    try {
      print("--------------------");
      print("REQUEST TYPE : PUT ");
      print("REQUEST END POINT : $endpoint" + "/" + id.toString());
      print("REQUEST DATA : $param");

      DioApi.Response response =
          await _dio.put(endpoint + "/" + id.toString(), data: param);
      return response;
    } on DioError catch (err) {
      await _checkForTokenAuthorizationError(err);
      return null;
    }
  }

  static Future<dynamic> deleteRequest({required endpoint, id}) async {
    try {
      print("--------------------");
      print("REQUEST TYPE : delete ");
      print("REQUEST END POINT : $endpoint" + "/" + id.toString());

      DioApi.Response response =
          await _dio.delete(endpoint + "/" + id.toString());
      return response;
    } on DioError catch (err) {
      await _checkForTokenAuthorizationError(err);
      return null;
    }
  }

  static Future<dynamic> getRequest({endpoint, param: const {"": ""}}) async {
    try {
      print("--------------------");
      print("REQUEST TYPE : GET ");
      print("REQUEST END POINT : $endpoint");
      print("REQUEST DATA : $param");

      DioApi.Response response = await _dio.get(
        endpoint,
        queryParameters: param,
      );
      print(response.statusCode);
      return response;
    } on DioError catch (err) {
      print(err);
      await _checkForTokenAuthorizationError(err);
      return null;
    }
  }

  static Future<bool> getAuthToken() async {
    try {
      print("we got into getAuthToken");

      var accessToken = await SharedPreferenceLocalStorage.getAccessToken();

      if (accessToken != null && accessToken.toString().trim().isNotEmpty) {
        if (_isAuthTokenValid() != null) {
          init();
        }
      }
      DioApi.Response response;

      var clientID = ApiEndpoint.DEV_CLIENT_ID;
      var clientSecret = ApiEndpoint.DEV_CLIENT_SECRET;
      var dio = DioApi.Dio();
      var clientCredentials =
          Base64Encoder().convert("$clientID:$clientSecret".codeUnits);

      dio.options.headers['Content-Type'] = ApiEndpoint.DEV_CONTENT_TYPE;
      dio.options.headers['Authorization'] = 'Basic $clientCredentials';

      print("getting new auth token");

      response =
          await dio.post(ApiEndpoint.HOST_URL + ApiEndpoint.AUTH_TOKEN, data: {
        'username': ApiEndpoint.DEV_USERNAME,
        'password': ApiEndpoint.DEV_PASSWORD,
        'grant_type': ApiEndpoint.DEV_GRANT_TYPE,
      });

      print("setting new auth token");
      print(response);

      await SharedPreferenceLocalStorage.setAccessToken(
          response.data["access_token"]);
      await SharedPreferenceLocalStorage.setAccessTokenType(
          response.data["token_type"]);
      await SharedPreferenceLocalStorage.setRefreshToken(
          response.data["refresh_token"]);
      await SharedPreferenceLocalStorage.setRefreshTime(
          response.data["expires_in"]);
      await SharedPreferenceLocalStorage.setLastRefreshTime(
          DateTime.now().hour);
      init();
      if (response.data["access_token"] != null) {
        return true;
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<dynamic> registerUser({data}) async {
    var response =
        await postRequest(endpoint: ApiEndpoint.CREATE_USER, param: data);
    print("registerUser response : $response");
    return response;
  }

  static Future<dynamic> sendOTP({phone}) async {
    var response = await getRequest(endpoint: ApiEndpoint.OTP + '/' + phone);
    return response;
  }

  static Future<dynamic> verifyPhone({userId, param}) async {
    var response = await putRequest(
        endpoint: ApiEndpoint.VERIFY_PHONE, id: userId, param: param);
    return response;
  }

  static Future<dynamic> updatePhone({userId, param}) async {
    var response = await putRequest(
        endpoint: ApiEndpoint.UPDATE_PHONE, id: userId, param: param);
    return response;
  }

  static Future<dynamic> getUserDetails({firebaseId}) async {
    var response =
        await getRequest(endpoint: ApiEndpoint.GET_USER + '/' + firebaseId);
    return response;
  }

  static Future<dynamic> getCategory({data}) async {
    var response =
        await postRequest(endpoint: ApiEndpoint.MASTER_CATEGORY, param: data);
    return response;
  }

  static Future<dynamic> getAllPost() async {
    var response = await getRequest(endpoint: ApiEndpoint.GET_POST);
    return response;
  }

  static Future<dynamic> addPostData({data}) async {
    var response =
        await postRequest(endpoint: ApiEndpoint.CREATE_POST, param: data);
    return response;
  }

  static Future<dynamic> updatePostData({data, id}) async {
    var response = await putRequest(
        endpoint: ApiEndpoint.UPDATE_POST, param: data, id: id);
    return response;
  }

  static Future<dynamic> deletePostData({id}) async {
    var response =
        await deleteRequest(endpoint: ApiEndpoint.DELETE_POST, id: id);
    return response;
  }

  static Future<dynamic> getPostSearch({data}) async {
    var response =
        await postRequest(endpoint: ApiEndpoint.SEARCH_POST, param: data);
    return response;
  }

  // static Future<dynamic> postComments({id}) async {
  //   var response = await getRequest(
  //       endpoint: ApiEndpoint.COMMENT_POST + "/" + id.toString());
  //   return response;
  // }

  static Future<dynamic> likePost({data}) async {
    var response =
        await postRequest(endpoint: ApiEndpoint.LIKE_POST, param: data);
    return response;
  }

  static Future<dynamic> isVerified({required String id}) async {
    var response =
        await postRequest(endpoint: ApiEndpoint.IS_VERIFIED + "/" + id);
    return response;
  }

  static Future<Response> getBooks({required String categoryId}) async {
    final response = await getRequest(
      endpoint: ApiEndpoint.getBook + '/$categoryId',
    );
    return response;
  }

  static Future<dynamic> postBook({data}) async {
    var response =
        await postRequest(endpoint: ApiEndpoint.getBook, param: data);
    return response;
  }

  static Future<dynamic> postLike({data}) async {
    var response = await postRequest(endpoint: ApiEndpoint.Like, param: data);
    return response;
  }

  static Future<dynamic> getLike({required String bookId}) async {
    var response = await getRequest(endpoint: ApiEndpoint.Like + '/' + bookId);
    return response;
  }

  static Future<dynamic> getBookMark({required int userId}) async {
    var response = await getRequest(
        endpoint: ApiEndpoint.getBookMark + '/' + '$userId' + '/type/book');
    return response;
  }

  static Future<dynamic> postBookMark({data}) async {
    var response =
        await postRequest(endpoint: ApiEndpoint.bookMark, param: data);
    return response;
  }
}
