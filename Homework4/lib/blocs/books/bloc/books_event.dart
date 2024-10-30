part of 'books_bloc.dart';

abstract class BookEvent {}

class SortByAuthor extends BookEvent {}

class SortByTitle extends BookEvent {}

class LoadBooks extends BookEvent {}

class SelectBook extends BookEvent {
  final Book book;

  SelectBook(this.book);
}