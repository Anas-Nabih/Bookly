part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> featuredBooks ;
  FeaturedBooksSuccess({required this.featuredBooks});
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String failureMSG;

  FeaturedBooksFailure({required this.failureMSG});
}
