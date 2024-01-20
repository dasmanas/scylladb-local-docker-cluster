# ScyllaDB Cluster in Your Local Docker Desktop

Use this Docker Compose to run a 3 node ScyllaDB 3 cluster is running on local docker. Out of these one node (i.e. `scylla1`) is
the seed node while other 2 nodes join the seed node.

Use `docker compose up` to run the cluster in local. Use `docker compose down` to tear down the cluster. You may also
choose to use `docker compose down --rmi local -v` to stop and remove all your resources created through the docker
compose.

## Important Notes
- A custom [sysctl.conf](etc%2Fsysctl.conf) file has been provided from outside to increase the number of asynchronous
I/O (AIO) requests allowed system-wide (i.e. `fs.aio-max-nr = 1048576`). This is applied through `sysctl`. Running the service container in
`--privileged` mode will allow to make those changes using `sysctl -p`. The updated value can be verified using from 
`cat /proc/sys/fs/aio-max-nr`
- List of exposed ports are
  - 9042 - to connect using `cqlsh`
- Install `cqlsh` in your local machine


Scylla Manager API URL - http://localhost:5080/ui/