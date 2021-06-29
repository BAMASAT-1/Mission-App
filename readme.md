[Project Structure]
    -Git repo for EPS subsystem (EPS and Solar Panels)              (CANBUS) (Cubesat Protocol) (I2C)
    -Git repo for the Control System and Sensor data aquisition     (I2C)
    -Git repo for the telemetry system                              (Cubesat Protocol)
    -Git repo for main mission app
        - starts all of the subservices in a single program instance
        - manages the graphql requests and endpoints

[Goals]
    - test modules in each service application (EPS, CTRL, TELEMETRY)
    - clean code
    - Working code