import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final HomeRepo _homeRepo;

  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitial());

  Future getFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await _homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failureMSG: failure.errorMSG));
    }, (books) {
      emit(FeaturedBooksSuccess(featuredBooks: books));
    });
  }
}
