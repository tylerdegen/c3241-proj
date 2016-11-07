.separator ,
.import Proj_Data_CSV.csv TEMP

--SELECT ISBN, Title, Publisher, Year, Price, Category FROM TEMP;

/*
INSERT INTO BOOKS (ISBN, Title, Pub_Name, Year, Price, Genre)
	VALUES SELECT ISBN, Title, Publisher, Year, Price, Category FROM TEMP;
*/
/*
INSERT INTO BOOKS (ISBN, Title, Pub_Name, Year, Price, Genre)
	SELECT TEMP.ISBN, TEMP.Title, TEMP.Publisher, TEMP.Year, TEMP.Price, TEMP.Category
	FROM TEMP
	WHERE TEMP.Title is not null and TEMP.ISBN is not null;
*/	
INSERT INTO BOOKS (ISBN, Title)
	SELECT TEMP.ISBN, TEMP.Title
	FROM TEMP
	WHERE TEMP.ISBN is not null and TEMP.ISBN != "";