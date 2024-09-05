# Smart Air Monitoring System

The **Smart Air Monitoring System** is designed to monitor environmental conditions using gas and humidity sensors. This system helps track air quality and humidity levels, providing valuable data for analysis and decision-making.

## Project Overview

The project consists of:
- **Gas Sensors**: Measure the concentration of gases (e.g., CO2).
- **Humidity Sensors**: Measure humidity levels and optionally temperature.

## SQL Schema

The SQL schema includes the following tables:

- **Sensors**: Contains basic information about each sensor, including its name, type (Gas or Humidity), and operational status.
- **GasSensorData**: Records gas level readings from gas sensors.
- **HumiditySensorData**: Records humidity and temperature readings from humidity sensors.

### Tables

- **Sensors**: 
  - `sensor_id`: Unique identifier for each sensor.
  - `sensor_name`: Name or label of the sensor.
  - `sensor_type`: Type of sensor (Gas or Humidity).
  - `status`: Operational status of the sensor (Active or Inactive).

- **GasSensorData**: 
  - `data_id`: Unique identifier for each gas data entry.
  - `sensor_id`: Foreign key linking to the `Sensors` table.
  - `recorded_at`: Timestamp of the data entry.
  - `gas_level`: Gas concentration measurement.

- **HumiditySensorData**: 
  - `data_id`: Unique identifier for each humidity data entry.
  - `sensor_id`: Foreign key linking to the `Sensors` table.
  - `recorded_at`: Timestamp of the data entry.
  - `humidity`: Humidity level measurement.
  - `temperature`: Optional temperature reading.

## How to Use

1. **Set Up the Database**:
   - Run the `schema.sql` script to create the necessary tables in your database.

2. **Insert Sample Data**:
   - Use the provided sample data script to populate the tables with example data.

3. **Interact with Data**:
   - Perform SQL queries to analyze and retrieve data from the tables.

## Sample Data

The sample data provides an example of how to populate the system for testing and demonstration purposes. It includes entries for different sensors and their recorded readings.

- **Sensors Table**: Sample entries for gas and humidity sensors.
- **GasSensorData Table**: Sample gas level readings.
- **HumiditySensorData Table**: Sample humidity and temperature readings.

For more details, refer to the `schema.sql` and `sample_data.sql` files.

