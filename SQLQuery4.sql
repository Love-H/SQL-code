use [AdventureWorks2012]
go

 
  select name from sys.tables

  -- 1.找出AdventureWorks所有的表以及表中包含的数据行数目   --> 71
  select * from sysobjects where xtype= 'U'  	















-- 2.1 Firstname是ken的所有人		--> 6
select * from Person.Person			
 where FirstName = 'Ken';

-- 2.2 FirstName不包含Ken的所有人   --> 19966
select * from Person.Person
where  FirstName != 'Ken'

-- 2.3 Title是Ms.的所有人
select * from Person.Person		    --> 415
where Title = 'Ms.'

-- 2.4 Title是Null的所有人			--> 18963
select * from Person.Person
where Title is null

-- 2.5 没有号码的那些人
select * from [Person].[PhoneNumberType]
PhoneNumberTypeID


-- 3.1 找出[Person].[Person]中那些[ModifiedDate]在2007到2009之间，且[EmailPromotion]＞0的人		--> 84
select * from Person.Person where emailpromotion>0 
And ModifiedDate between '2007' and '2009'

-- 3.2 找出[Person].[Person]中FirstName包含K，LastName开头是M的人								-- 137
select * from Person.Person 
where FirstName like '%K%' and LastName like 'M%';


-- 5
SELECT TOP (1000) [BusinessEntityID]
      ,[PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2012].[Person].[Person]
  WHERE ISNULL(AdditionalContactInfo ,'H')= 'H'




