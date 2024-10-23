import '../../../repositories/books/book_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../model/book.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final BookRepository bookRepository;
  List<Book> books = [];
  HomePageBloc(this.bookRepository) : super(HomePageInitial()) {
    on<HomePageEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<SortByAuthorEvent>((event, emit) {
      final sortedBooks = books..sort((a, b) => a.author.compareTo(b.author));
      emit(SortByAuthor(sortedBooks: []));
    });

    on<SortByTitleEvent>((event, emit) {
      final sortedBooks = books..sort((a, b) => a.title.compareTo(b.title));
      emit(SortByTitle(sortedBooks: []));
    });

    on<SortWaitingEvent>((event, emit) {
      init();
      emit(SortByAuthor(sortedBooks: []));
    });
  }

  void init() async {}
}