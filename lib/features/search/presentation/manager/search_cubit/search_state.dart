part of 'search_cubit.dart';

@immutable
abstract class SearchState {
  const SearchState();
}

class SearchInitial extends SearchState {}
class SearchLoading extends SearchState {}
class SearchSuccess extends SearchState {
  final List<BookModel> books;
  const SearchSuccess({required this.books});
}
class SearchFailure extends SearchState {
  final String errorMSG;
  const SearchFailure({required this.errorMSG});
}
