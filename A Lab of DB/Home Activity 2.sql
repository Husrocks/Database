/* 
Task: Home Activity 2
Submitted To: Miss Sobia
Submitted By: Hussnain Bashir
Roll No: IAC-FA23-BSCS-035

*/



-- task: ddl commands practice
-- schema: accounts

-- 1. create database
create database accounts;
go

-- 2. use newly created database
use accounts;
go

-- 3. create schema 'accounts'
create schema accounts;
go

-- 4. create table: accounts.clients
create table accounts.clients (
    clientid int not null, 
    name nvarchar(100) not null,
    email nvarchar(100),
    phoneno nvarchar(20),
    constraint pk_clients primary key (clientid)
);

-- 5. create table: accounts.invoices
create table accounts.invoices (
    invoiceid int not null,
    clientid int not null,
    invoicedate date default getdate(),
    amount decimal(18,2) not null,
    status nvarchar(50),
    constraint pk_invoices primary key (invoiceid),
    constraint fk_invoices_clients foreign key (clientid) 
        references accounts.clients(clientid)
);

-- 6. create table: accounts.payments
create table accounts.payments (
    paymentid int not null,
    invoiceid int not null,
    paymentdate date default getdate(),
    amountpaid decimal(18,2) not null,
    paymentmethod nvarchar(50),
    constraint pk_payments primary key (paymentid),
    constraint fk_payments_invoices foreign key (invoiceid) 
        references accounts.invoices(invoiceid)
);
-- add a column to clients
alter table accounts.clients
add address varchar(100);

-- drop payments table
drop table accounts.payments;

-- drop invoices table
drop table accounts.invoices;

-- drop clients table
drop table accounts.clients;
