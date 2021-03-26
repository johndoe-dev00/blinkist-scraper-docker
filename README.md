# blinkist-scraper-docker
Docker-Compose setup for use with blinkist-scraper.  
This will run a Linux desktop inside a docker container with an VNC web-interface.  
Using this method saves a bit of headache running selenium and chrome inside a docker container.

## Requirements
* Linux + Docker  
or  
* Windows + WSL2 + Docker Desktop for Windows

## Instructions
1. `git clone https://github.com/johndoe-dev00/blinkist-scraper-docker.git` to your desired location
2. `docker-compose build`  
will load the desktop container and install the requirements for blinkist-scraper
3. `./clone.sh`  
will clone the blinkist-scraper repo to "./code"
4. `docker-compose up -d`  
will start the Docker container. 
5. Open your browser and go to `http://localhost:8089` in order to open the VNC web-interface
6. In the web-interface open the terminal and run `cd /code`
7. You can now run `python blinkistscraper --help` from here
8. Output from the scraper will later be saved to the subfolders "./books" and "./dump" on the docker host
