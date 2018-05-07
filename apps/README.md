Define steps to run docker containers by using docker-compose

*.init*, template file used to define the structure of the starter file that will be created
on base of this, used to initialize all running environments.

*.env*,file that holds config variables used to customize template generated file parts; used when docker
is run using the docker-compose.yml file (see below) and inside containers to give them meta information
about themselves.

*docker-compose.yml* is a generated file used to start docker containers, obtained after processing templates.


Please, Verify all variables as used and defined in configs/configs.env.base for more info.
