import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final HomeRepo _homeRepo;
  SimilarBooksCubit(this._homeRepo) : super(SimilarBooksInitial());

  Future getSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());

    var data = await _homeRepo.fetchSimilarBooks(category: category);

    data.fold((failure) {
      emit(SimilarBooksFailure(errorMSG: failure.errorMSG));
    }, (books) {
      emit(SimilarBooksSuccess(books:books));
    });
  }
}
