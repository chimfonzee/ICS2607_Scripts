CREATE TABLE Student (
	student_no int not null default 0,
	student_name String
)


CREATE VIEW employee_city as
SELECT * from Employee e where e.City = 'Calgary'


CREATE TABLE employee_table as
SELECT * from Employee e where e.City = 'Calgary'


DROP TABLE employee_table


SELECT * from Invoice i
order by CustomerId, InvoiceId 


UPDATE Employee
SET
	Title = 'IT Manager',
	ReportsTo = 1
where LastName = 'Azucenas'


DELETE from Employee
where LastName = 'Dela Cruz'


SELECT * from Album a
where Title LIKE '% Rock %'


SELECT
	a.Name Name
	b.Title Title
from Artist a
	where a.ArtistId BETWEEN 1 and 50
left join Album b
	where a.ArtistId = b.ArtistId 


SELECT
	Title
from Album a where a.ArtistId in (
	SELECT x.ArtistId
		from Artist x where x.ArtistId BETWEEN 1 and 50
	)


SELECT
	SUM(i.Total) Sum_Total
from Invoice i where i.InvoiceDate BETWEEN DATETIME('2007-01-01 00:00:00') and DATETIME('2007-01-31 00:00:00')
	

SELECT DATE('2007-01-01 00:00:00')


SELECT
	COUNT(ArtistId) as ArtistId_Cnt,
	ArtistId
from Album album where not Album.ArtistId in (1, 2, 3)
group by ArtistId 
