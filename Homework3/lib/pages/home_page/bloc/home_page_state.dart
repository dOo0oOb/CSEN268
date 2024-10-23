part of 'home_page_bloc.dart';

@immutable
sealed class HomePageState {}

final class HomePageInitial extends HomePageState {}

final class SortByAuthor extends HomePageState {
  final List<Book> sortedBooks;
  
  SortByAuthor({required this.sortedBooks});
}

final class SortByTitle extends HomePageState {
  final List<Book> sortedBooks;
  
  SortByTitle({required this.sortedBooks});
}

final class SortWaiting extends HomePageState {
  final List<Book> sortedBooks;
  
  SortWaiting({required this.sortedBooks});
}