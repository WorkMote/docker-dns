Here will live any set of scripts aimed to be run by containers' processes in order to implement
slight modifications prior to have them running.

For this to work, processes must provide access points to alter them. As this highly depends on how
processes were defined, it's encouraged for process makers to follow a predictable pattern, like:

- Offering an "interruption" point name so scripts can know if/how to deal with process
- Passing the process id info so script can know if/how to act with that.
- Propose a structure (folder-like), so only correct scripts can be called.

Again, all of this is up to process architect, so it's important to check them first.
