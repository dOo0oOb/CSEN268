// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../blocs/book/bloc/book_bloc.dart';
// import 'router_demo_pages/router_auther.dart';
// import 'router_demo_pages/router_book_detail.dart';
// import 'router_demo_pages/router_title.dart';




// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
  

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<BookBloc,BookState>(
//       builder:(context, state) {
//         switch (state){
//           case BookSelected _:
//             return RouterBookDetail(book: (state as BookSelected).book,);
//           case BooksLoaded booksLoaded:
//             return booksLoaded.isSortedByAuthor
//             ? RouterAuthor(bookList: (state as BooksLoaded).books, isSortedByAuthor: (state as BooksLoaded).isSortedByAuthor,)
//             : RouterTitle(bookList: (state as BooksLoaded).books, isSortedByAuthor: (state as BooksLoaded).isSortedByAuthor,);

//           case BooksInitial _:
//           default:
//             return Container();
//         }
//       },
//     );
//   }
// }