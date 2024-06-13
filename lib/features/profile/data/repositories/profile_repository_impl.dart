import 'package:goal_fit/core/platform/network_info.dart';
import 'package:goal_fit/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:goal_fit/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final ProfileRemoteDataSourceImpl remoteDataSourceImpl;
  final NetworkInfo networkInfo;

  ProfileRepositoryImpl({
    required this.remoteDataSourceImpl,
    required this.networkInfo,
  });

  // @override
  // Future<Either<Failure, StoreModel>> addStore(
  //     String? name, String? adsress) async {
  //   if (await networkInfo.isConnected) {
  //     try {
  //       final result = await remoteDataSourceImpl.addStore(name, adsress);
  //       return Right(result);
  //     } on DioException catch (e) {
  //       final failure = DioExceptions.fromDioError(e);
  //       return Left(failure);
  //     }
  //   } else {
  //     return const Left(ConnectionFailure("Connection error"));
  //   }
  // }
}
