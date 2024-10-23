import '/repositories/books/book_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_page_bloc.dart';
import 'views/initial_view.dart';
import 'views/sort_by_author_view.dart';
import 'views/sort_by_title_view.dart';
import 'views/waiting_view.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(RepositoryProvider.of<BookRepository>(context)),
      child: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          switch (state) {
            case SortByAuthor _:
              return SortByAuthorView(sortedBooks: state.sortedBooks);
            case SortByTitle _:
              return SortByTitleView(sortedBooks: state.sortedBooks);
            case SortWaiting _:
              return const WaitingView();
            case HomePageInitial _:
            default:
              return const InitialView();
          }
        },
      ),
    );
  }
}