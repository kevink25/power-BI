CREATE DATABASE Sales;
USE Sales;

CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,              
    Customer_name VARCHAR(100) NOT NULL,   
    Product_Category VARCHAR(50) NOT NULL, 
    Ordered_item VARCHAR(100) NOT NULL,     
    Contact_No VARCHAR(15) UNIQUE NOT NULL 
);
ALTER TABLE Orders ADD order_quantity INT NOT NULL;

ALTER TABLE Orders RENAME TO sales_orders;

INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity) VALUES
(1, 'Alice Johnson', 'Electronics', 'Smartphone', '1234567890', 2),
(2, 'Bob Smith', 'Clothing', 'T-shirt', '0987654321', 3),
(3, 'Charlie Brown', 'Electronics', 'Laptop', '1122334455', 1),
(4, 'David White', 'Home Appliances', 'Microwave', '2233445566', 1),
(5, 'Emily Davis', 'Books', 'Novel', '3344556677', 5),
(6, 'Frank Miller', 'Electronics', 'Tablet', '4455667788', 2),
(7, 'Grace Wilson', 'Clothing', 'Jacket', '5566778899', 1),
(8, 'Henry Adams', 'Furniture', 'Sofa', '6677889900', 1),
(9, 'Isabella Martinez', 'Beauty', 'Perfume', '7788990011', 2),
(10, 'Jack Taylor', 'Sports', 'Football', '8899001122', 4);

SELECT Customer_name, Ordered_item FROM sales_orders;

UPDATE sales_orders 

SET Ordered_item = 'Smart TV' 

WHERE Order_Id = 1;

DROP TABLE sales_orders;



