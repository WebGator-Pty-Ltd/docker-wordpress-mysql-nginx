# Docker-wordpress-mysql-nginx
Simple docker-compose for WordPress, with mysql, reddis, nginx and php-fpm

```
Run http://localhost:8080/

```

# usage:
+ `docker-compose up -d` to start all containers
+ `docker-compose down` to stop all containers
+ If you need to restart after modifying *docker-compose.yml* restart with `docker-compose down` and `docker-compose up -d`

# Troubleshooting

## If you need to restart after modifying *Dockerfile* and have Troubleshooting:
+ Verify all containers running: `docker ps -a`
+ Stop all containers and remove: `docker stop $(docker ps -a -q)` and `docker rm $(docker ps -a -q)`
+ Try to start again `docker-compose up -d`
+ If you cannot connect to mysqli, please run docker inspect wordpress_ilashes_db

 ```
 "Networks": {
                "i-lashes_default": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": [
                        "wordpress_ilashes_db",
                        "db",
                        "45f4f3ab642f"
                    ],
                    "NetworkID": "f24fd801de97c97797b4d52b512f131c2734b275656e1162d3e6dd72d2f15b13",
                    "EndpointID": "011ecd5cf2ab69cd6513bbd6117d4ca35418658780228b52d1e52dfb8160b023",
                    "Gateway": "192.168.208.1",
                    "IPAddress": "192.168.208.5",
                    "IPPrefixLen": 20,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "MacAddress": "02:42:c0:a8:d0:05",
                    "DriverOpts": null
                }
            }

 ```
