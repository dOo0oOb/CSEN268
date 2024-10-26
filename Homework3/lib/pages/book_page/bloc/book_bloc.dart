import 'package:bloc/bloc.dart';
import '../../../model/book.dart';

part 'book_event.dart';
part 'book_state.dart';


class BookBloc extends Bloc<BookEvent, BookState> {
  List<Book> books = [];
  bool isSortedByAuthor = true;

  void init() async {
    books = List.generate(10, (index) => Book.createMockBook());
  }

  BookBloc() : super(BooksInitial()) {
    on<LoadBooks>((event, emit) {
      _sortBooks();
      emit(BooksLoaded(books: books, isSortedByAuthor: isSortedByAuthor));
    });

    on<SortByAuthor>((event, emit) {
      isSortedByAuthor = true;
      _sortBooks();
      emit(BooksLoaded(books: books, isSortedByAuthor: true));
    });

    on<SortByTitle>((event, emit) {
      isSortedByAuthor = false;
      _sortBooks();
      emit(BooksLoaded(books: books, isSortedByAuthor: false));
    });

    on<SelectBook>((event, emit) {
      emit(BookSelected(event.book));
    });
  }

  void _sortBooks() {
    if (isSortedByAuthor) {
      books.sort((a, b) => a.author.compareTo(b.author));
    } else {
      books.sort((a, b) => a.title.compareTo(b.title));
    }
  }
}
