#!/bin/bash
PROJECT_ROOT=$(cd ..; pwd)
docker run -i --rm -v $PROJECT_ROOT:/srv --entrypoint="/bin/bash" karmapulse/meteor:1.5.2 -c "cd /srv; npm install; meteor build /srv/dist --architecture os.linux.x86_64 --allow-superuser"
cp $PROJECT_ROOT/dist/srv.tar.gz .

docker build -t $1 .
