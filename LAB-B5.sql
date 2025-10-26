USE ACCOUNTS;

INSERT INTO Accounts.Employees(EmployeeID, FirstName, LastName, Email, Phone, HireDate, DepartmentID, Salary)
VALUES
(1,'Ali','Raza','ali.raza@abc.com','03001234567','2023-01-10',1,50000),
(2,'Ahsan','Malik','ahsan.malik@abc.com','03011234567','2023-02-12',2,55000),
(3,'Sadia','Khan','sadia.khan@abc.com','03021234567','2023-03-14',1,47000),
(4,'Bilal','Ahmed','bilal.ahmed@abc.com','03031234567','2023-03-20',3,60000),
(5,'Hina','Nawaz','hina.nawaz@abc.com','03041234567','2023-04-01',2,48000),
(6,'Rizwan','Butt','rizwan.butt@abc.com','03051234567','2023-04-11',4,65000),
(7,'Nida','Ali','nida.ali@abc.com','03061234567','2023-05-01',3,52000),
(8,'Usman','Iqbal','usman.iqbal@abc.com','03071234567','2023-05-21',2,70000),
(9,'Anum','Rafiq','anum.rafiq@abc.com','03081234567','2023-06-01',1,56000),
(10,'Hassan','Qureshi','hassan.q@abc.com','03091234567','2023-06-11',4,59000),
(11,'Kiran','Ahmed','kiran.ahmed@abc.com','03101234567','2023-07-02',3,52000),
(12,'Zain','Tariq','zain.tariq@abc.com','03111234567','2023-07-12',1,47000),
(13,'Areeba','Zafar','areeba.z@abc.com','03121234567','2023-08-02',2,55000),
(14,'Hamza','Aslam','hamza.aslam@abc.com','03131234567','2023-08-22',4,60000),
(15,'Iqra','Naseer','iqra.n@abc.com','03141234567','2023-09-02',3,49000),
(16,'Rehan','Haider','rehan.h@abc.com','03151234567','2023-09-22',2,65000),
(17,'Sara','Younis','sara.y@abc.com','03161234567','2023-10-02',4,47000),
(18,'Omar','Latif','omar.l@abc.com','03171234567','2023-10-22',3,50000),
(19,'Faisal','Ali','faisal.ali@abc.com','03181234567','2023-11-02',1,55000),
(20,'Rida','Tariq','rida.t@abc.com','03191234567','2023-11-22',4,58000);


INSERT INTO Accounts.Departments(DepartmentID, DepartmentName, Manager)
VALUES
(1,'Finance','Ali Raza'),
(2,'HR','Ahsan Malik'),
(3,'Sales','Bilal Ahmed'),
(4,'IT','Hamza Aslam'),
(5,'Marketing','Kiran Ahmed'),
(6,'Procurement','Rehan Haider'),
(7,'Admin','Usman Iqbal'),
(8,'Customer Support','Rida Tariq'),
(9,'Legal','Omar Latif'),
(10,'Logistics','Iqra Naseer'),
(11,'Audit','Sara Younis'),
(12,'Accounts','Faisal Ali'),
(13,'Production','Anum Rafiq'),
(14,'Warehouse','Zain Tariq'),
(15,'Development','Nida Ali'),
(16,'Maintenance','Rizwan Butt'),
(17,'Security','Hassan Qureshi'),
(18,'Design','Hina Nawaz'),
(19,'Operations','Farhan Javed'),
(20,'Public Relations','Areeba Zafar');

INSERT INTO Accounts.Salaries(SalaryID, EmployeeID, Amount, PayDate)
VALUES
(1,1,50000,'2025-09-01'),
(2,2,55000,'2025-09-01'),
(3,3,47000,'2025-09-01'),
(4,4,60000,'2025-09-01'),
(5,5,48000,'2025-09-01'),
(6,6,65000,'2025-09-01'),
(7,7,52000,'2025-09-01'),
(8,8,70000,'2025-09-01'),
(9,9,56000,'2025-09-01'),
(10,10,59000,'2025-09-01'),
(11,11,52000,'2025-09-01'),
(12,12,47000,'2025-09-01'),
(13,13,55000,'2025-09-01'),
(14,14,60000,'2025-09-01'),
(15,15,49000,'2025-09-01'),
(16,16,65000,'2025-09-01'),
(17,17,47000,'2025-09-01'),
(18,18,50000,'2025-09-01'),
(19,19,55000,'2025-09-01'),
(20,20,58000,'2025-09-01');


INSERT INTO Accounts.Payments(PaymentID, EmployeeID, PaymentDate, Amount, PaymentType)
VALUES
(1,1,'2025-09-01',50000,'Bank Transfer'),
(2,2,'2025-09-01',55000,'Cash'),
(3,3,'2025-09-01',47000,'Bank Transfer'),
(4,4,'2025-09-01',60000,'Cash'),
(5,5,'2025-09-01',48000,'Bank Transfer'),
(6,6,'2025-09-01',65000,'Cheque'),
(7,7,'2025-09-01',52000,'Cash'),
(8,8,'2025-09-01',70000,'Bank Transfer'),
(9,9,'2025-09-01',56000,'Cash'),
(10,10,'2025-09-01',59000,'Bank Transfer'),
(11,11,'2025-09-01',52000,'Cash'),
(12,12,'2025-09-01',47000,'Bank Transfer'),
(13,13,'2025-09-01',55000,'Cheque'),
(14,14,'2025-09-01',60000,'Cash'),
(15,15,'2025-09-01',49000,'Bank Transfer'),
(16,16,'2025-09-01',65000,'Cheque'),
(17,17,'2025-09-01',47000,'Cash'),
(18,18,'2025-09-01',50000,'Bank Transfer'),
(19,19,'2025-09-01',55000,'Cash'),
(20,20,'2025-09-01',58000,'Cheque');
                