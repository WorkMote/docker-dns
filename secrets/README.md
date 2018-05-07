Set here for convenience. To be used by derived images when run under docker-compose
to pass secrets to the container.

*scripts* is a folder used as a helper to pass scripts configs data as set in configs/ to
running containers, until configs/ approach becomes usable under a thing other than Swarm
(Docker limitation).

*ssh-keys* is a folder with a special meaning, as it can store public keys used to access
container remotely. Create it and store pub keys inside of it.

Please, Verify what is expected from each used images!
