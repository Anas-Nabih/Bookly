import 'package:bookShelf/core/api_services.dart';
import 'package:bookShelf/features/home/data/repo/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getItInstance = GetIt.instance;

void setupServiceLocator(){
  getItInstance.registerSingleton<ApiServices>(ApiServices(Dio()));
  getItInstance.registerSingleton<HomeRepoImpl>(HomeRepoImpl(apiServices: getItInstance.get<ApiServices>()));

}
