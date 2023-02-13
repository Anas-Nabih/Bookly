import 'package:bloc/bloc.dart';
import 'package:bookShelf/features/home/data/models/book_model.dart';
import 'package:bookShelf/features/search/repo/search_repo.dart';
 import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo _searchRepo;

  SearchCubit(this._searchRepo) : super(SearchInitial());

  Future getSearchBooks({required String keyWord}) async {
    emit(SearchLoading());

    var data = await _searchRepo.fetchSearchBooks(keyWord: keyWord);

    data.fold((failure) {
      emit(SearchFailure(errorMSG: failure.errorMSG));
    }, (books) {
      emit(SearchSuccess(books: books));
    });
  }
}
