-- Create Sensors Table
CREATE TABLE Sensors (
    sensor_id INT AUTO_INCREMENT PRIMARY KEY,
    sensor_name VARCHAR(100) NOT NULL,  -- Name or label for the sensor
    sensor_type VARCHAR(50) NOT NULL,   -- 'Gas' or 'Humidity'
    status VARCHAR(20) DEFAULT 'Active' -- Status of the sensor (Active, Inactive, etc.)
);

-- Create GasSensorData Table
CREATE TABLE GasSensorData (
    data_id INT AUTO_INCREMENT PRIMARY KEY,
    sensor_id INT, -- Foreign key to Sensors table
    recorded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date and time of recording
    gas_level DECIMAL(6,2), -- Gas concentration (e.g., CO2 level in ppm)
    FOREIGN KEY (sensor_id) REFERENCES Sensors(sensor_id)
);

-- Create HumiditySensorData Table
CREATE TABLE HumiditySensorData (
    data_id INT AUTO_INCREMENT PRIMARY KEY,
    sensor_id INT, -- Foreign key to Sensors table
    recorded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date and time of recording
    humidity DECIMAL(5,2), -- Humidity level as a percentage
    temperature DECIMAL(5,2), -- Optional: Temperature reading in degrees Celsius
    FOREIGN KEY (sensor_id) REFERENCES Sensors(sensor_id)
);
