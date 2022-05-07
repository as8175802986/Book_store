using CommonLayer.Models;
using CommonLayer.Models.Book;
using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLayer.Interface
{
    public interface IBookBL
    {
        public string AddBook(BookModel book);
        public string UpdateBookDetails(UpdateBookModel update, int BookId);
        public string DeleteBook(int BookId);
        public List<GetBooksModel> GetAllBooks();
        public List<GetBooksModel> GetAllBooksbyBookId(int BookId);
    }
}
