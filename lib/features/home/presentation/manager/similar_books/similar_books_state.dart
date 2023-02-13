part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {
  const SimilarBooksState();
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccess({required this.books});
}

class SimilarBooksFailure extends SimilarBooksState {
  final String errorMSG;

  const SimilarBooksFailure({required this.errorMSG});
}
