import 'package:bloc/bloc.dart';
import 'package:bookShelf/features/home/data/models/book_model.dart';
import 'package:bookShelf/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepo _homeRepo;

  NewestBooksCubit(this._homeRepo) : super(NewestBooksInitial());

  Future getNewestBooks() async {
    emit(NewestBooksLoading());

    var data = await _homeRepo.fetchNewestBooks();

    data.fold((failure) {
      emit(NewestBooksFailure(errorMSG: failure.errorMSG));
    }, (books) {
      emit(NewestBooksSuccess(newsetBook: books));
    });
  }
}
