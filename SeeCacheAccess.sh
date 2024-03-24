docker exec -it $(sudo docker container ls | grep "live-build/live-build-container" | cut -d' ' -f 1,2) tail -f /var/log/apt-cacher-ng/apt-cacher.log
