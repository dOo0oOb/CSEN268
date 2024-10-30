part of 'books_bloc.dart';

abstract class BookState {}

class BooksInitial extends BookState {}

class BooksLoaded extends BookState {
  final List<Book> books;
  final bool isSortedByAuthor;

  BooksLoaded({required this.books, required this.isSortedByAuthor});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BooksLoaded &&
        other.books == books &&
        other.isSortedByAuthor == isSortedByAuthor;
  }

  @override
  int get hashCode => books.hashCode ^ isSortedByAuthor.hashCode;
}

class BookSelected extends BookState {
  final Book book;

  BookSelected(this.book);
}