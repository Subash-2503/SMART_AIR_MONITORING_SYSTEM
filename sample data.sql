INSERT INTO Sensors (sensor_name, sensor_type, status)
VALUES 
('Main Office Gas Sensor', 'Gas', 'Active'),
('Living Room Humidity Sensor', 'Humidity', 'Active'),
('Warehouse Gas Sensor', 'Gas', 'Active'),
('Bedroom Humidity Sensor', 'Humidity', 'Inactive');

INSERT INTO GasSensorData (sensor_id, gas_level)
VALUES 
(1, 405.5),  -- Corresponding to 'Main Office Gas Sensor'
(1, 412.3),  -- Corresponding to 'Main Office Gas Sensor'
(3, 350.8),  -- Corresponding to 'Warehouse Gas Sensor'
(3, 368.9);  -- Corresponding to 'Warehouse Gas Sensor'

INSERT INTO HumiditySensorData (sensor_id, humidity, temperature)
VALUES 
(2, 55.4, 22.1),  -- Corresponding to 'Living Room Humidity Sensor'
(2, 53.7, 21.9),  -- Corresponding to 'Living Room Humidity Sensor'
(4, 60.2, 19.3),  -- Corresponding to 'Bedroom Humidity Sensor'
(4, 58.6, 18.8);  -- Corresponding to 'Bedroom Humidity Sensor'
