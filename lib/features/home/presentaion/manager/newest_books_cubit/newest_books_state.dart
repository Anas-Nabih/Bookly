part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState {
  const NewestBooksState();
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> newsetBook;

  const NewestBooksSuccess({required this.newsetBook});
}

class NewestBooksFailure extends NewestBooksState {
  final String errorMSG;

  const NewestBooksFailure({required this.errorMSG});
}
