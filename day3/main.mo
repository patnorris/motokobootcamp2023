import List "mo:base/List";
import Array "mo:base/Array";
import Book "book";

actor {
// 6. In `main.mo` import the type **List** from the Base Library and create a list that stores books. 
    let books : List.List<Book> = null;

// 7. In `main.mo` create a function called `add_book` that takes a book as parameter and returns nothing this function should add this book to your list. Then create a second function called `get_books` that takes no parameter but returns an **Array** that contains all books stored in the list.
`   public func add_book(book : Book) : async () {
        let result = List.push<Book>(book, books);
        return;
    };

    public func add_book() : async [Book] {
        return Array.freeze(List.toVarArray<Book>(books));
    };

}