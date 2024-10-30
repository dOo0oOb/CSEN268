import 'package:CSEN268_F24/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:CSEN268_F24/navigation/routerdemo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../model/book.dart';

class RouterTitle extends StatelessWidget {
  const RouterTitle({super.key, required this.bookList});
  final List<Book> bookList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 243, 245),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: const Text('Books'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            Text(
              'Sorted by Title',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10), // Space between text and list
            Expanded(
              child: ListView.builder(
                itemCount: bookList.length,
                itemBuilder: (context, index) {
                  final book = bookList[index];
                  return ListTile(
                    title: Text(book.title),
                    subtitle: Text(book.author),
                  );
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}

