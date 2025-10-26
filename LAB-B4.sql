USE SALES;

INSERT INTO sales.Customers(CustomerID, FirstName, LastName, Email, Phone, Address, City, Country, CreatedAt, DateOfBirth)
VALUES
(701,'Areeba','Badar','areeba@gmail.com',333777777,'XYZ','Lahore','Pakistan','2025-03-12','2001-03-09'),
(702,'Ali','Khan','ali.khan@gmail.com',3001234567,'ABC Street','Karachi','Pakistan','2025-03-12','2000-05-10'),
(703,'Faisal','Ahmed','faisal@gmail.com',3009876543,'Model Town','Lahore','Pakistan','2025-03-12','1999-07-15'),
(704,'Hina','Zafar','hina@gmail.com',3011234567,'Canal Road','Faisalabad','Pakistan','2025-03-12','2002-01-10'),
(705,'Usman','Tariq','usman@gmail.com',3029876543,'Wapda Town','Lahore','Pakistan','2025-03-12','2001-11-25'),
(706,'Sadia','Naz','sadia@gmail.com',3038888888,'Iqbal Town','Multan','Pakistan','2025-03-12','2003-03-20'),
(707,'Hamza','Ali','hamza@gmail.com',3047777777,'Gulberg','Lahore','Pakistan','2025-03-12','2000-08-14'),
(708,'Bilal','Arif','bilal@gmail.com',3056666666,'Johar Town','Lahore','Pakistan','2025-03-12','2002-09-10'),
(709,'Nida','Rashid','nida@gmail.com',3065555555,'Saddar','Rawalpindi','Pakistan','2025-03-12','1998-06-01'),
(710,'Zain','Qureshi','zain@gmail.com',3074444444,'Shah Faisal','Karachi','Pakistan','2025-03-12','2001-12-09'),
(711,'Ayesha','Bano','ayesha@gmail.com',3083333333,'Garden Town','Lahore','Pakistan','2025-03-12','2003-02-17'),
(712,'Rehan','Aslam','rehan@gmail.com',3092222222,'Cantt','Multan','Pakistan','2025-03-12','2000-11-30'),
(713,'Anum','Khalid','anum@gmail.com',3101111111,'PECHS','Karachi','Pakistan','2025-03-12','2002-04-22'),
(714,'Imran','Haider','imran@gmail.com',3119999999,'Civil Lines','Faisalabad','Pakistan','2025-03-12','1999-09-19'),
(715,'Sara','Iqbal','sara@gmail.com',3128888888,'Model Town','Lahore','Pakistan','2025-03-12','2001-03-01'),
(716,'Farhan','Javed','farhan@gmail.com',3137777777,'Shalimar','Lahore','Pakistan','2025-03-12','1998-10-28'),
(717,'Hassan','Butt','hassan@gmail.com',3146666666,'Gulistan','Karachi','Pakistan','2025-03-12','2000-05-05'),
(718,'Rida','Faisal','rida@gmail.com',3155555555,'Iqbal Town','Faisalabad','Pakistan','2025-03-12','2003-07-21'),
(719,'Omar','Naseer','omar@gmail.com',3164444444,'Garden Town','Lahore','Pakistan','2025-03-12','1999-12-11'),
(720,'Kiran','Shahid','kiran@gmail.com',3173333333,'Cantt','Karachi','Pakistan','2025-03-12','2002-06-18');



INSERT INTO sales.Products(ProductID, ProductName, Price, Description, StockQuantity, Category)
VALUES
(1001,'Shampoo',250,'Sunsilk',100,'Cosmetics'),
(1002,'Soap',120,'Capri',300,'Toiletries'),
(1003,'Facewash',350,'Ponds',200,'Cosmetics'),
(1004,'Toothpaste',180,'Colgate',400,'Toiletries'),
(1005,'Oil',500,'Dabur',150,'Personal Care'),
(1006,'Sugar',150,'White Sugar',500,'Grocery'),
(1007,'Rice',300,'Basmati',600,'Grocery'),
(1008,'Flour',200,'Wheat',700,'Grocery'),
(1009,'Milk',180,'Nestle',300,'Dairy'),
(1010,'Juice',120,'Slice',250,'Beverage'),
(1011,'Biscuit',100,'LU',200,'Snacks'),
(1012,'Chips',80,'Lay’s',350,'Snacks'),
(1013,'Tea',600,'Lipton',500,'Beverage'),
(1014,'Coffee',900,'Nescafe',300,'Beverage'),
(1015,'Butter',400,'Olper’s',200,'Dairy'),
(1016,'Cheese',700,'Kraft',150,'Dairy'),
(1017,'Detergent',650,'Surf Excel',300,'Cleaning'),
(1018,'Handwash',250,'Lifebuoy',280,'Toiletries'),
(1019,'Tissue',200,'Rose Petal',250,'Home Essentials'),
(1020,'Cereal',450,'Kellogg’s',180,'Breakfast');



INSERT INTO sales.Orders(OrderID, CustomerID, OrderDate, TotalAmount, Status)
VALUES
(501,701,'2025-10-25',2000,'Delivered'),
(502,702,'2025-10-25',1500,'Pending'),
(503,703,'2025-10-25',4500,'Delivered'),
(504,704,'2025-10-25',3500,'Pending'),
(505,705,'2025-10-25',2500,'Delivered'),
(506,706,'2025-10-25',3000,'Cancelled'),
(507,707,'2025-10-25',1800,'Delivered'),
(508,708,'2025-10-25',600,'Delivered'),
(509,709,'2025-10-25',5000,'Delivered'),
(510,710,'2025-10-25',450,'Pending'),
(511,711,'2025-10-25',2300,'Delivered'),
(512,712,'2025-10-25',1500,'Cancelled'),
(513,713,'2025-10-25',3400,'Delivered'),
(514,714,'2025-10-25',6000,'Pending'),
(515,715,'2025-10-25',1900,'Delivered'),
(516,716,'2025-10-25',2200,'Delivered'),
(517,717,'2025-10-25',1250,'Delivered'),
(518,718,'2025-10-25',450,'Delivered'),
(519,719,'2025-10-25',2800,'Delivered'),
(520,720,'2025-10-25',3100,'Delivered');


INSERT INTO sales.OrderItems(OrderItemID, OrderID, ProductID, Quantity)
VALUES
(901,501,1001,2),
(902,502,1002,3),
(903,503,1003,1),
(904,504,1004,4),
(905,505,1005,2),
(906,506,1006,5),
(907,507,1007,1),
(908,508,1008,2),
(909,509,1009,3),
(910,510,1010,4),
(911,511,1011,2),
(912,512,1012,1),
(913,513,1013,3),
(914,514,1014,2),
(915,515,1015,5),
(916,516,1016,2),
(917,517,1017,1),
(918,518,1018,4),
(919,519,1019,3),
(920,520,1020,2);
