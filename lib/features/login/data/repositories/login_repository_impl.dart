import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:goal_fit/core/error/exeption.dart';
import 'package:goal_fit/core/error/failure.dart';
import 'package:goal_fit/core/platform/network_info.dart';
import 'package:goal_fit/features/login/data/data_sources/login_remote_data_source.dart';
import 'package:goal_fit/features/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  final LoginRemoteDataSourceImpl remoteDataSourceImpl;
  final NetworkInfo networkInfo;

  LoginRepositoryImpl({
    required this.remoteDataSourceImpl,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, String>> login(String? phone, String? password) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSourceImpl.login(phone, password);
        return Right(result);
      } on DioException catch (e) {
        final failure = DioExceptions.fromDioError(e);
        return Left(failure);
      }
    } else {
      return const Left(ConnectionFailure("Connection error"));
    }
  }
}
