#!/usr/bin/perl
@containers = `docker ps`;

foreach(@containers) {
    if(m/(\w{12}).*8081->8081.*/) {
        `docker stop $1`;
        `docker rm $1`;
    }
}

@images = `docker images`;

foreach(@images) {
    if(m/.*test_deploy.*(\w{12}).*/) {
        `docker rmi $1`;
    }
}

`docker build -t test_deploy -f Dockerfile .`;
`docker run -d --name test -p 8081:8081 test_deploy`
