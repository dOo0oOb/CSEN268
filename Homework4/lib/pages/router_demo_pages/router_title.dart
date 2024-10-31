// import 'package:CSEN268_F24/blocs/authentication/bloc/authentication_bloc.dart';
// import 'package:CSEN268_F24/navigation/routerdemo.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';

// import '../../blocs/book/bloc/book_bloc.dart';
// import '../../model/book.dart';

// class RouterTitle extends StatelessWidget {
//   const RouterTitle({super.key, required this.bookList, required bool isSortedByAuthor});
//   final List<Book> bookList;
  

//   @override
//   Widget build(BuildContext context) {
//     context.read<BookBloc>().add(SortByTitle());
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60.0),
//         child: AppBar(
//           backgroundColor: const Color.fromARGB(255, 255, 243, 245),
//           leading: IconButton(
//             icon: const Icon(Icons.menu),
//             onPressed: () {},
//           ),
//           title: const Text('Books'),
//           centerTitle: true,
//           actions: <Widget>[
//             IconButton(
//               // ignore: prefer_const_constructors
//               icon: Icon(Icons.account_circle),
//               onPressed: () {},
//             ),
//           ],
//         ),
//       ),

//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // ignore: prefer_const_constructors
//             Text(
//               'Sorted by Title',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10), // Space between text and list
//             Expanded(
//               child: ListView.builder(
//                 itemCount: bookList.length,
//                 itemBuilder: (context, index) {
//                   final book = bookList[index];
//                   return ListTile(
//                     title: Text("Title: ${book.title}"),
//                     subtitle: Text(book.author),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),

//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/book/bloc/book_bloc.dart';

class RouterTitle extends StatelessWidget {
  const RouterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BookBloc>().add(SortByTitle());

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 251, 239, 255),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: const Text('Books'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: BlocBuilder<BookBloc, BookState>(
        builder: (context, state) {
          if (state is BooksLoaded) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sorted by Title',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.books.length,
                      itemBuilder: (context, index) {
                        final book = state.books[index];
                        return Container(
                          color: const Color.fromARGB(255, 251, 239, 255),
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ListTile(
                            title: Text("Title: ${book.title}"),
                            subtitle: Text("Author: ${book.author}"),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
