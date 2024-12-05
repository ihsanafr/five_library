
import 'dart:convert';

import 'package:dartz/dartz.dart';

import '../model/response/auth_response_model.dart';
import 'auth_local_datasource.dart';

class AuthRemoteDatasource{
  get http => null;

  Future<Either<String, AuthResponseModel>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('http://192.168.90.199:8000/api/login'),
      headers:{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password
      }),
    );

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }


  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('http://192.168.90.199:8000/api/logout'),
      headers:{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.accessToken}'
      },
    );

    if (response.statusCode == 200) {
      return Right(response.body);
    } else {
      return Left(response.body);
    }
  }


}