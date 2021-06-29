#!/bin/bash

echo "Bamasat-1 Mission Software Install Script"

echo "run in kubos base dir"




cd ..
git clone https://github.com/BAMASAT-1/CTRL-Service
git clone https://github.com/BAMASAT-1/Telemetry-Service
git clone https://github.com/BAMASAT-1/EPS-Service
git clone https://github.com/BAMASAT-1/Mission-App
git clone https://github.com/BAMASAT-1/Bamasat-Configuration
cd Bamasat-Configuration

# move custom workplace .toml configuration to base directory of kubos api installation for building

cp base_kubos_folder.Cargo.toml ../Cargo.toml
cargo run --bin telemetry-service -- -c tools/local_config.toml
cargo run --bin monitor-service -- -c tools/local_config.toml 

cd ../Mission_App

echo "Building Mission Application"

cargo build

echo "Finished, Hopefully this works!"
echo "email Jon if any issues"