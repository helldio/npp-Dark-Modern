package com.example.notepadtheme;

import java.util.List;
import java.util.ArrayList;
import java.util.stream.Collectors;

/**
 * Standard Java implementation highlighting streams, generic records, and exceptions.
 */
public class LibrarySystem {

    public record Book(String title, String author, double price) {}

    public static class Inventory {
        private final List<Book> books = new ArrayList<>();

        public void addBook(Book book) {
            if (book == null) {
                throw new IllegalArgumentException("Book cannot be null");
            }
            books.add(book);
        }

        public List<Book> getCheapBooks(double maxPrice) {
            return books.stream()
                    .filter(b -> b.price() <= maxPrice)
                    .collect(Collectors.toList());
        }
    }

    public static void main(String[] args) {
        Inventory inv = new Inventory();
        inv.addBook(new Book("Effective Java", "Joshua Bloch", 45.00));
        inv.addBook(new Book("Java Concurrency in Practice", "Brian Goetz", 38.50));

        System.out.println("Cheap books:");
        for (Book b : inv.getCheapBooks(40.00)) {
            System.out.printf("- %s by %s ($%.2f)%n", b.title(), b.author(), b.price());
        }
    }
}
