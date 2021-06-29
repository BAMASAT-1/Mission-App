[Install Instructions]
    - if using vagrant skip this step
    1. clone the kubos repo into directory of choice or use the vagrant sdk
    2. run the install.sh script
        - it will install all of the sub services from the github organization
        - it will also install a modified Cargo.toml in the base directory that will add these directories to the build system 
        - it will build the application
    
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





