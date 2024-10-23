import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/book.dart';
import '../../../widgets/book_image.dart';
import '../bloc/home_page_bloc.dart';


class InitialView extends StatefulWidget {
  const InitialView({super.key});

  @override
  State<InitialView> createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView> {
  late HomePageBloc bloc;
  String? title;
  String? author;
  String? description;
  String? imageUrl;

  @override
  void initState() {
    bloc = BlocProvider.of<HomePageBloc>(context);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {

    List<Book> bookList = List.generate(20, (index) {
      return Book.createMockBook();
    });

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu), // Leading icon
          onPressed: () {
            // Handle the menu button press
          },
        ),
        title: const Text('Book Club App'),
        centerTitle: true,  // Center the title
        actions: <Widget>[
          IconButton(
            icon: const CircleAvatar(
              radius: 50, // Radius of the CircleAvatar
              backgroundColor: Colors.grey, // Background color
              child: Icon(
                Icons.person, // Use any Material icon
                color: Colors.white, // Icon color
                size: 40, // Size of the icon
              ),
            ),
            onPressed: () {
              // Handle avatar tap
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // "Sort by" text using labelMedium style
                Text(
                  'Sort by',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(width: 16.0), // Add space between text and buttons
                OutlinedButton(
                  onPressed: () {
                    // Handle sorting by author
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 240, 235, 242),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Set corner radius to 10
                    ),
                    
                  ),
                  child: const Text('Author'),
                ),
                const SizedBox(width: 16.0), // Add space between buttons
                OutlinedButton(
                  onPressed: () {
                    // Handle the menu button press
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Set corner radius to 10
                    ),
                  ),
                  child: const Text('Title'),
                ),
              ],
            ),
            // Add more content or book list here
            const SizedBox(height: 16.0), // Space between sort options and books text
            
            // "Books" text using headline style
            Text(
              'Books',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16.0), // Space between books text and book images
            
            // Horizontal list of book images
            SizedBox(
              height: 200, // Set a fixed height for the book image list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
                    child: BookImage(book: bookList[index]),
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