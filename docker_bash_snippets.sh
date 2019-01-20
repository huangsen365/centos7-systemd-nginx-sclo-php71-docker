docker build -t centos7-systemd-nginx-sclo-php71 .
docker run --privileged --name centos7-systemd-nginx-sclo-php71-test -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 -d huangsen365/centos7-systemd-nginx-sclo-php71
