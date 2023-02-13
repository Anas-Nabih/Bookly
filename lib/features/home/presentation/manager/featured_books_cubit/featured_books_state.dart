part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {
  const FeaturedBooksState();
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> featuredBooks;

  const FeaturedBooksSuccess({required this.featuredBooks});
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String failureMSG;

  const FeaturedBooksFailure({required this.failureMSG});
}
