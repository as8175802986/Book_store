using CommonLayer.Models.Book;
using System;
using System.Collections.Generic;
using System.Text;

namespace CommonLayer.Models.Order
{
    public class GetOrderModel
    {
        public int OrderId { get; set; }
        public string OrderDate { get; set; }
        public BookGetOrderModel getbookModel { get; set; }
    }
}
