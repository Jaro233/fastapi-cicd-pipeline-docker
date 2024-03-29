-- Create a 'books' table
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    status VARCHAR(100) CHECK (status IN ('to read', 'reading', 'read')),
    user_rating INT CHECK (user_rating >= 1 AND user_rating <= 5)
);

-- Insert some sample data into the 'books' table
INSERT INTO books (title, author, genre, status, user_rating) VALUES
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 'read', 5),
('1984', 'George Orwell', 'Dystopian', 'to read', NULL),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 'reading', NULL),
('Pride and Prejudice', 'Jane Austen', 'Romance', 'read', 4),
('Brave New World', 'Aldous Huxley', 'Dystopian', 'to read', NULL);
