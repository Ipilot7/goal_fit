import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:goal_fit/common/models/shared_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class HomeRemoteDataSource {
  Future<dynamic> login(String? phone, String? password);
}

class LoginRemoteDataSourceImpl extends HomeRemoteDataSource {
  Dio dio;

  LoginRemoteDataSourceImpl({required this.dio});

  @override
  Future login(String? username, String? password) async {
    final prefs = await SharedPreferences.getInstance();
    String deviceName = "";
    String identifier = '';

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      deviceName = iosInfo.utsname.machine;
      identifier = iosInfo.identifierForVendor ?? "";
    } else {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      deviceName = androidInfo.model;
      identifier = androidInfo.id ?? "";
    }

    var json = {
      'username': username,
      'password': password,
      'device_id': identifier
    };
    final responce = await dio.request(
      '',
      data: jsonEncode(json),
      options: Options(
        method: 'POST',
        headers: {
          'accept': 'application/json',
          'Content-Type': 'application/json',
          'X-CSRFTOKEN':
              '8HvK6DUYK0ZYcN3qvMhFJ5bGorFjYoFSeUXWwNE05PPhunLwod2yWGRmwOt0OcMT'
        },
      ),
    );

    prefs.setString(SharedModel.accessToken, responce.data["access"]);
    // prefs.setString(SharedModel.accessToken, responce.data["refresh"]);
    return responce.data["access"];
  }
}
