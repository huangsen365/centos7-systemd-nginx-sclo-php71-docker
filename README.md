# centos7-systemd-nginx-sclo-php71-docker
centos7 systemd nginx sclo php71 docker

# docker build test
docker build -t centos7-systemd-nginx-sclo-php71 .

# docker run test
docker run --privileged --name centos7-systemd-nginx-sclo-php71-test -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 -d centos7-systemd-nginx-sclo-php71

# docker stop and rm
docker stop centos7-systemd-nginx-sclo-php71-test && docker rm centos7-systemd-nginx-sclo-php71-test
