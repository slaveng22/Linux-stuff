#!/bin/bash
cd /home/slaven/
docker build -t "app1:latest" .

cd /home/slaven/
docker build -t "app2:latest" .

cd /home/slaven/
docker build -t "" .

cd /home/slaven/Apps/Bimagine/app4-client/
docker build -t "" .

cd /home/slaven/
docker build -t " .


app1_id=$(docker images -q app1:latest)
app2_id=$(docker images -q app2:latest)
app3_id=$(docker images -q app3:latest)
app4_id=$(docker images -q app4:latest)
app5_id=$(docker images -q app5:latest)

docker run -d -p 40001:80 --name app5 $app5_id
docker run -d -p 40002:80 --name app1 $app1_id
docker run -d -p 40003:80 --name app2 $app2_id
docker run -d -p 40004:80 --name app4 $app4_id
docker run -d -p 40005:80 --name app3 $app3_id

echo "Containers started with the following mappings:"
echo "app5: 40001"
echo "app1: 40002"
echo "app2: 40003"
echo "app4: 40004"
echo "app3: 40005"
