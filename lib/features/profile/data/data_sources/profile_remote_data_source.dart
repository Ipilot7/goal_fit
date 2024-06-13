import 'package:dio/dio.dart';

abstract class ProfileRemoteDataSource {
  // Future<dynamic> editCategory(int? id, String? name, String? image);
}

///api/v1/users/managers/ create meneger
class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  Dio dio;

  ProfileRemoteDataSourceImpl({required this.dio});

  // @override
  // Future addStore(String? name, String? address) async {
  //   final prefs = await SharedPreferences.getInstance();

  //   var json = {
  //     'name': name,
  //     'address': address,
  //   };
  //   final responce = await dio.request(
  //     '/api/v1/store/',
  //     data: jsonEncode(json),
  //     options: Options(
  //       method: 'POST',
  //       headers: {
  //         'accept': 'application/json',
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Bearer ${prefs.getString(SharedModel.accessToken)}'
  //       },
  //     ),
  //   );

  //   return StoreModel.fromJson(responce.data);
  // }
}
// to'lovga qancha vaqt qogani 
// maximum nechta kassasi borligi va qancha qoshgani 
