import 'package:bookShelf/core/api_services.dart';
import 'package:bookShelf/core/error/error_handling.dart';
import 'package:bookShelf/features/home/data/models/book_model.dart';
import 'package:bookShelf/features/search/repo/search_repo.dart';
 import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiServices apiServices;

  SearchRepoImpl({required this.apiServices});

  @override
  Future<Either<ErrorHandling, List<BookModel>>> fetchSearchBooks(
      {required String keyWord}) async {
    try {
      var data = await apiServices.get(endPoint: "volumes?q=$keyWord");

      List<BookModel> books = [];

      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
