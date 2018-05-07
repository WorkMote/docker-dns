Set here for convenience. To be used by derived images when run under docker-compose
to pass configs to the container.

*configs.env.base* is a file that holds variables used to update how containers are created
and referenced.

*configs.env* is a file that holds variables used to override definitions made in base file.
Update it to your needs.

*scripts* folder contains any scripts aimed to be run in cointainers to perform slight modifications
on them, to avoid having to create new images just for those changes.


Please, Verify what is expected from each used images!