# Payload with Artillery and Docker

Just a proof of concept for running artillery js within docker.

## Running

1. Scenario files are in ```files/``` folder.
2. Rename ```scenario_1.yml.example``` to ```scenario_1.yml```. Or build your own scenario in yml.
3. Rename ```docker-compose.yml.example``` to ```docker-compose.yml```.
4. In ```docker-compose.yml``` change ```ARTILLERY_FILE``` to match your scenario filename to be run with it.
5. Run with ```docker-compose up``` or ```docker-compose up --build``` on the first time.
6. Result can be found at your host folder ```artillery/report.json.html```.

