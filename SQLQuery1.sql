CREATE TABLE employee_payrollservice

(
	[Id] INT PRIMARY KEY Identity,
	name varchar (50),
	phone varchar(15),
	address varchar (100),
	department varchar (20),
	gender varchar(1),
	basicpay money,
	deductions money,
	taxablepay money,
	tax money,
	netpay money,
	startdate date,

);

create procedure [dbo].[SpAddEmployeeDetails]
@EmployeeName varchar(50),
@PhoneNumber varchar(15),
@Address varchar(100),
@Department varchar(20),
@Gender varchar(1),
@BasicPay money,
@Deductions money,
@TaxablePay money,
@Tax money,
@NetPay money,
@StartDate date
as

insert into employee_payroll1 values (@EmployeeName, @PhoneNumber, @Address, @Department, @Gender, @BasicPay, @Deductions, @TaxablePay, @Tax, @NetPay, @StartDate)

go

 select * from employee_payroll ;

