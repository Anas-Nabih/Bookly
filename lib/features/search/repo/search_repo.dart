import 'package:bookShelf/core/error/error_handling.dart';
import 'package:bookShelf/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
  Future<Either<ErrorHandling,List<BookModel>>> fetchSearchBooks({required String keyWord});
}