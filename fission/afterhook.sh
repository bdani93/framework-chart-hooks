fission environment create --name go --image fission/go-env:1.1.0 --builder fission/go-builder:1.1.0
fission environment create --name java --image fission/jvm-env --builder fission/jvm-builder
fission environment create --name nodejs --image fission/node-env
fission environment create --name python --image fission/python-env
