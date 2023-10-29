# hello-kernel

## build
This will build the kernel module.
```sh
$ make all
```

## cleanup
This will clean up any files generated from building the kernel module.
```sh
$ make clean
```

## start module
This will start the module, and then print the latest message from the kernel ring buffer.
```sh
$ make start
```

## stop module
This will stop the module, and then print the latest message from the kernel ring buffer.
```sh
$ make stop
```

## test module
This will start the module, print the first message, then stop the module, and then print the two last messages.
```sh
$ make test
```
