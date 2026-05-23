/**
 * Modern JavaScript (ES6+) showcasing classes, async/await, and arrow functions.
 */
class Book {
    constructor(title, author, isbn) {
        this.title = title;
        this.author = author;
        this.isbn = isbn;
        this.available = true;
    }

    checkout() {
        if (!this.available) {
            throw new Error(`"${this.title}" is already checked out.`);
        }
        this.available = false;
        return this;
    }
}

class Library {
    constructor(name) {
        this.name = name;
        this.books = [];
    }

    addBook(book) {
        this.books.push(book);
    }

    async findBookByIsbn(isbn) {
        // Simulating a network/database delay
        return new Promise((resolve) => {
            setTimeout(() => {
                const book = this.books.find(b => b.isbn === isbn);
                resolve(book || null);
            }, 100);
        });
    }
}

// Self-executing async function for testing
(async () => {
    const lib = new Library("Metropolis Library");
    lib.addBook(new Book("The Great Gatsby", "F. Scott Fitzgerald", "9780743273565"));
    lib.addBook(new Book("1984", "George Orwell", "9780451524935"));

    try {
        const book = await lib.findBookByIsbn("9780451524935");
        if (book) {
            console.log(`Found: ${book.title} by ${book.author}`);
            book.checkout();
            console.log(`Available: ${book.available ? 'Yes' : 'No'}`);
        }
    } catch (err) {
        console.error("An error occurred:", err.message);
    }
})();
