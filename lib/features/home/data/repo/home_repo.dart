import 'package:bookly/core/error/error_handling.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<ErrorHandling,List>> fetchNewestBooks();
  Future<Either<ErrorHandling,List>> fetchFeaturedBooks();
}