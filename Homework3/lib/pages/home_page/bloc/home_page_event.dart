part of 'home_page_bloc.dart';

@immutable
sealed class HomePageEvent {}

class SortByAuthorEvent extends HomePageEvent {}

class SortByTitleEvent extends HomePageEvent {}

class SortWaitingEvent extends HomePageEvent {}