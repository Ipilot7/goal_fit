import 'package:dartz/dartz.dart';
import 'package:goal_fit/core/error/failure.dart';

abstract class LoginRepository {
  Future<Either<Failure, String>> login(String? phone, String? password);
}
