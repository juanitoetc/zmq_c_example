# zmq_c_example
C zmq basic example
Tested on Ubuntu 18.04.4 LTS (Bionic Beaver)

# Installation
`sudo apt-get install libzmq3-dev`

# Compilation
## Manual
### Server
`gcc src/srv/server_zmq.c -lzmq -o app/server`

### Client
`gcc src/cli/client_zmq.c -lzmq -o app/client`

## Makefile
make

## Usage
Instanciate a server:
`app/server`

Instanciate a client:
`app/client`

## Delete objects and binaries
make clean
