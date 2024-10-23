import 'package:flutter/material.dart';
import '../model/book.dart';

// class BookImage extends StatelessWidget {
//   const BookImage({super.key, required this.book});
//   final Book book;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 100,
//       height: 200,
//       child: Card(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 padding: EdgeInsets.all(20),
//                 width: double.infinity,
//                 alignment: Alignment.center,
//                 child: CircleAvatar(
//                   backgroundImage: Image.network(book.imageUrl).image,
//                 ),
//               ),
//               Text(
//               '${book.title} ${book.author}',
//               style: Theme.of(context).textTheme.bodyLarge,
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }


class BookImage extends StatelessWidget {
  const BookImage({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 160,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // Set edge radius to 0
        ),
        color: Colors.transparent, // Make the card background transparent
        child: Padding(
          padding: const EdgeInsets.all(0), // Remove padding around the card
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Use the book image as the background color
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image.network(book.imageUrl).image, // Use the book image URL
                    fit: BoxFit.cover, // Cover the entire container
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0), // Add padding for text
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title: ${book.title}', // Title in a separate Text widget
                      style: Theme.of(context).textTheme.labelLarge, // Bold title
                      maxLines: 2, // Limit to one line
                      overflow: TextOverflow.ellipsis, // Ellipsis for overflow
                    ),
                    Text(
                      'Author: ${book.author}', // Author in a separate Text widget
                      style: Theme.of(context).textTheme.labelMedium, // Style for author
                      maxLines: 1, // Limit to one line
                      overflow: TextOverflow.ellipsis, // Ellipsis for overflow
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
