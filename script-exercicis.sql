SELECT COUNT(*) FROM Flights;

SELECT Origin, avg(ArrDelay), avg(DepDelay) FROM Flights
GROUP BY Origin;

SELECT Origin, colYear, colMonth, avg(ArrDelay) FROM Flights
GROUP BY Origin, colYear, colMonth
ORDER BY Origin ASC;

SELECT City, colYear, colMonth, avg(ArrDelay) FROM Flights
INNER JOIN USAirports
	ON Flights.Origin = USAirports.IATA
GROUP BY City, colYear, colMonth
ORDER BY City ASC;

SELECT UniqueCarrier, colYear, colMonth, sum(Cancelled) FROM Flights
GROUP BY UniqueCarrier, colYear, colMonth, Cancelled
ORDER BY sum(Cancelled) DESC;

SELECT TailNum, sum(Distance) FROM Flights
GROUP BY TailNum, Distance
ORDER BY Distance DESC
LIMIT 10;

SELECT UniqueCarrier, avg(ArrDelay) FROM Flights
GROUP BY UniqueCarrier
ORDER BY avg(ArrDelay) DESC
LIMIT 10;