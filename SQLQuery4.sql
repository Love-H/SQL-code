use [AdventureWorks2012]
go

 
  select name from sys.tables

  -- 1.�ҳ�AdventureWorks���еı��Լ����а�������������Ŀ   --> 71
  select * from sysobjects where xtype= 'U'  	















-- 2.1 Firstname��ken��������		--> 6
select * from Person.Person			
 where FirstName = 'Ken';

-- 2.2 FirstName������Ken��������   --> 19966
select * from Person.Person
where  FirstName != 'Ken'

-- 2.3 Title��Ms.��������
select * from Person.Person		    --> 415
where Title = 'Ms.'

-- 2.4 Title��Null��������			--> 18963
select * from Person.Person
where Title is null

-- 2.5 û�к������Щ��
select * from [Person].[PhoneNumberType]
PhoneNumberTypeID


-- 3.1 �ҳ�[Person].[Person]����Щ[ModifiedDate]��2007��2009֮�䣬��[EmailPromotion]��0����		--> 84
select * from Person.Person where emailpromotion>0 
And ModifiedDate between '2007' and '2009'

-- 3.2 �ҳ�[Person].[Person]��FirstName����K��LastName��ͷ��M����								-- 137
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




