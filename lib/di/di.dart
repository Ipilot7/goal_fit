import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get_it/get_it.dart';
import 'package:goal_fit/core/platform/network_info.dart';
import 'package:goal_fit/core/platform/pretty_dio_logger.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final di = GetIt.instance;
// Alice alice = Alice();

Future<void> init() async {
  // di.registerFactory(() => LoginBloc(repository: di()));
  // di.registerFactory(() => ProfileBloc(repository: di()));
  // di.registerFactory(
  //     () => ProductBloc(repository: di(), productRepository: di()));

//UseCases
  // di.registerLazySingleton(() => LoginUseCase(repository: di()));

  ///Repository
  // di.registerFactory<LoginRepository>(
  //   () => LoginRepositoryImpl(
  //     remoteDataSourceImpl: di(),
  //     networkInfo: di(),
  //   ),
  // );
  // di.registerFactory<ProfileRepository>(
  //   () => ProfileRepositoryImpl(
  //     remoteDataSourceImpl: di(),
  //     networkInfo: di(),
  //   ),
  // );
  // di.registerFactory<ProductRepository>(
  //   () => ProductRepositoryImpl(
  //     remoteDataSourceImpl: di(),
  //     networkInfo: di(),
  //   ),
  // );

  // /// DataSource
  // di.registerLazySingleton<LoginRemoteDataSourceImpl>(
  //     () => LoginRemoteDataSourceImpl(dio: di()));
  // di.registerLazySingleton<ProfileRemoteDataSourceImpl>(
  //     () => ProfileRemoteDataSourceImpl(dio: di()));
  // di.registerLazySingleton<ProductRemoteDataSourceImpl>(
  //     () => ProductRemoteDataSourceImpl(dio: di()));

  /// Network
  final options = BaseOptions(
      baseUrl: 'https://bizombor.onrender.com',
      connectTimeout: const Duration(seconds: 50),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json'
      });

  Dio dio = Dio(options);

  // dio.interceptors.add(alice.getDioInterceptor());

  di.registerSingleton<Dio>(dio);
  dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90));

  /// Network Info
  di.registerLazySingleton(() => InternetConnectionChecker());

  di.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(di()));

  /// Local cache

  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  di.registerLazySingleton(() => sharedPreferences);
  //localization

  await EasyLocalization.ensureInitialized();

  // /// Local datasource

  // await dbBase.init();

  //notification

  // await LocalNotifications.init();

  // final document = await getApplicationDocumentsDirectory();
  // await Hive.initFlutter(document.path);
  // //GetChats ui
  // if (!Hive.isAdapterRegistered(2)) {
  //   Hive.registerAdapter<GetChats>(GetChatsAdapter());

  // }

  // await Hive.openBox<GroupModel>(HiveKey.groupModel);
}
