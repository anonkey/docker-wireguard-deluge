docker run -d \
  --name=deluge \
  --cap-add=NET_ADMIN \
  --cap-add=SYS_MODULE \
  --sysctl="net.ipv4.conf.all.src_valid_mark=1" \
  -e TZ=Etc/UTC \
  -e DELUGE_LOGLEVEL=error \
  -p 51820:51820/udp \
  -p 8112:8112 \
  -p 6881:6881 \
  -p 6881:6881/udp \
  -e TZ=Etc/UTC \
  -e PUID=1000 \
  -e PGID=1000 \
  -v /lib/modules:/lib/modules \
  -v ./config:/config \
  -v ./downloads:/downloads \
  --restart unless-stopped \
  32fe521a6b835e666e0f8c8853c5bdb7574d980f241018962229e136f518e681
