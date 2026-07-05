USE ev_project;
DESCRIBE electriccardata_clean;
DESCRIBE electric_vehicle_charging_station_list;
DESCRIBE `cheapestelectriccars-evdatabase`;
DESCRIBE evindia;
SELECT *
FROM electriccardata_clean
LIMIT 10;
SELECT *
FROM electric_vehicle_charging_station_list
LIMIT 10;
SELECT *
FROM `cheapestelectriccars-evdatabase`
LIMIT 10;
SELECT *
FROM evindia
LIMIT 10;

SHOW COLUMNS FROM electriccardata_clean;

SHOW COLUMNS FROM electric_vehicle_charging_station_list;

SHOW COLUMNS FROM `cheapestelectriccars-evdatabase`;

SHOW COLUMNS FROM evindia;

SELECT COUNT(*) AS Total_Electric_Cars
FROM electriccardata_clean;

SELECT Brand,
       Model,
       Range_Km
FROM electriccardata_clean
ORDER BY Range_Km DESC
LIMIT 10;

SELECT Brand,
       Model,
       TopSpeed_KmH
FROM electriccardata_clean
ORDER BY TopSpeed_KmH DESC
LIMIT 10;

SELECT Brand,
       Model,
       Efficiency_WhKm
FROM electriccardata_clean
ORDER BY Efficiency_WhKm ASC
LIMIT 10;

SELECT Brand,
       COUNT(*) AS TotalCars
FROM electriccardata_clean
GROUP BY Brand
ORDER BY TotalCars DESC;

SELECT AVG(Range_Km) AS Average_Range
FROM electriccardata_clean;

SELECT MAX(Range_Km) AS Maximum_Range
FROM electriccardata_clean;

SELECT MIN(Range_Km) AS Minimum_Range
FROM electriccardata_clean;

SELECT Brand,
       Model,
       Range_Km
FROM electriccardata_clean
WHERE Range_Km > 500;

SELECT Brand,
       Model,
       FastCharge_KmH
FROM electriccardata_clean
ORDER BY FastCharge_KmH DESC
LIMIT 10;

SELECT COUNT(*) AS Total_Charging_Stations
FROM electric_vehicle_charging_station_list;

SELECT region,
COUNT(*) AS TotalStations
FROM electric_vehicle_charging_station_list
GROUP BY region
ORDER BY TotalStations DESC;

SELECT type,
COUNT(*) AS Total
FROM electric_vehicle_charging_station_list
GROUP BY type
ORDER BY Total DESC;

SELECT service,
COUNT(*) AS Total
FROM electric_vehicle_charging_station_list
GROUP BY service
ORDER BY Total DESC;

SELECT region,
address,
power
FROM electric_vehicle_charging_station_list
ORDER BY power DESC
LIMIT 10;

SELECT COUNT(*) AS Total_EV_Models
FROM `cheapestelectriccars-evdatabase`;

SELECT Name,
       `Range`
FROM `cheapestelectriccars-evdatabase`
ORDER BY `Range` DESC
LIMIT 10;

SELECT Name,
TopSpeed
FROM `cheapestelectriccars-evdatabase`
ORDER BY TopSpeed DESC
LIMIT 10;

SELECT Name,
Efficiency
FROM `cheapestelectriccars-evdatabase`
ORDER BY Efficiency ASC
LIMIT 10;

SELECT Name,
NumberofSeats
FROM `cheapestelectriccars-evdatabase`
WHERE NumberofSeats = 5;

SELECT COUNT(*) AS Total_Indian_EVs
FROM evindia;

SELECT VehicleType,
COUNT(*) AS Total
FROM evindia
GROUP BY VehicleType
ORDER BY Total DESC;

SELECT Transmission,
COUNT(*) AS Total
FROM evindia
GROUP BY Transmission;

SELECT Style,
COUNT(*) AS Total
FROM evindia
GROUP BY Style
ORDER BY Total DESC;

SELECT Car,
BootSpace
FROM evindia
ORDER BY BootSpace DESC;

SELECT Brand,
Model,
Range_Km
FROM electriccardata_clean
ORDER BY Range_Km DESC
LIMIT 10;

SELECT Brand,
       COUNT(*) AS TotalCars
FROM electriccardata_clean
GROUP BY Brand
ORDER BY TotalCars DESC
LIMIT 10;

DESCRIBE `cheapestelectriccars-evdatabase`;

SELECT Name,
       `Range`
FROM `cheapestelectriccars-evdatabase`
LIMIT 10;

SELECT Name,
       `Range`
FROM `cheapestelectriccars-evdatabase`
ORDER BY CAST(REPLACE(`Range`, ' km', '') AS UNSIGNED) DESC
LIMIT 10;
USE ev_project;

-- Inspect column names and data types for each table
DESCRIBE electriccardata_clean;
DESCRIBE electric_vehicle_charging_station_list;
DESCRIBE cheapestelectriccars_evdatabase;
DESCRIBE evindia;