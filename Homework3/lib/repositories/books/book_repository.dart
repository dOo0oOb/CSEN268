import '../../model/book.dart';

abstract class BookRepository {
  Future<List<Book>> sortBook({
    required String title,
    required String author,
    required String description,
    required String imageUrl,
  });
}

class FirebaseBookRepository extends BookRepository {
  Future<void> someFirebaseSpecificMethod() async {
    await Future.delayed(
      const Duration(seconds: 10),
      () {},
    );
  }

  @override
  Future<List<Book>> sortBook({
    required String title,
    required String author,
    required String description,
    required String imageUrl,
  }) async {
    await someFirebaseSpecificMethod();
    
    // Generate a list of mock books
    List<Book> bookList = List.generate(20, (index) {
      return Book.createMockBook();
    });

    // Sort books by author (example sorting, could also be title or something else)
    bookList.sort((a, b) => a.author.compareTo(b.author));

    return bookList; // Return the sorted list of books
  }
}

class OktaBookRepository extends BookRepository {
  Future<void> someOktaSpecificMethod() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {},
    );
  }

  @override
  Future<List<Book>> sortBook({
    required String title,
    required String author,
    required String description,
    required String imageUrl,
  }) async {
    await someOktaSpecificMethod();
    
    // Generate a list of mock books
    List<Book> bookList = List.generate(20, (index) {
      return Book.createMockBook();
    });

    // Sort books by title (example sorting, could also be author or something else)
    bookList.sort((a, b) => a.title.compareTo(b.title));

    return bookList; // Return the sorted list of books
  }
}
