SELECT Title, ProductionCompany, Locations, ReleaseYear FROM FilmLocations WHERE Writer<>"James Cameron";


SELECT Title, ReleaseYear, Locations FROM FilmLocations WHERE ReleaseYear<=2000;

SELECT Locations, FunFacts FROM FilmLocations;


SELECT COUNT(Locations) FROM FilmLocations WHERE Writer="James Cameron";

SELECT COUNT(Locations) FROM FilmLocations WHERE Director="Woody Allen";

SELECT Count(Title) FROM FilmLocations WHERE Locations="Russian Hill";

SELECT Count(*) FROM FilmLocations WHERE ReleaseYear<1950;

#Retrieve the number of release years of the films distinctly, produced by Warner Bros. Pictures.

SELECT COUNT(DISTINCT ReleaseYear) FROM FilmLocations WHERE ProductionCompany="Warner Bros. Pictures";

#Retrieve the name of all unique films released in the 21st century and onwards, along with their release years.
SELECT DISTINCT(Title), ReleaseYear FROM FilmLocations
where ReleaseYear >=2001 ;

#Retrieve the names of all the directors and their distinct films shot at City Hall.


SELECT DISTINCT Title, Director FROM FilmLocations WHERE Locations="City Hall";

#Retrieve the number of distributors distinctly who distributed films acted by Clint Eastwood as 1st actor.

SELECT COUNT(DISTINCT Distributor) FROM FilmLocations WHERE Actor1="Clint Eastwood";

#Retrieve the first 15 rows from the "FilmLocations" table starting from row 11.
SELECT * FROM FilmLocations LIMIT 15 OFFSET 10;


#Retrieve the name of first 50 films distinctly.
SELECT DISTINCT Title FROM FilmLocations LIMIT 50;

#Retrieve first 10 film names distinctly released in 2015.
SELECT DISTINCT Title FROM FilmLocations WHERE ReleaseYear=2015 LIMIT 10;

#Retrieve the next 3 film names distinctly after first 5 films released in 2015.
SELECT DISTINCT Title FROM FilmLocations WHERE ReleaseYear=2015 LIMIT 3 OFFSET 5;