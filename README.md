# doctoc-container

Containerized version of [https://github.com/thlorenz/doctoc](https://github.com/thlorenz/doctoc).


## Build

The container image can be built with Podman or Docker with:

```shell
podman build -f Containerfile -t doctoc .
```

## Running

The `doctoc` command is set as the entrypoint of the container, so it can be run as though it is the binary itself.  A volume containing your files to be modified must be mounted into `/tmp` inside the container with `:rw` read/write permissions.  On Fedora/RedHat distributions, the `:Z` SELinux relable option is required.

Command line arguments for `doctoc` may be provided as container arguments, as in the `--github` example below:

```shell
podman run --volume=$(pwd):/tmp:Z -it doctoc --github <path to file>
```

Alternatively, you may alias the container runtime commands to simplify the usage:

```shell
alias doctoc="podman run --volume=$(pwd):/tmp:Z -it doctoc"
```

This will allow you to run `doctoc` with a much shorter command, as though the container the command itself:

```shell
doctoc --github <path to file>
```

Adding the alias above to your `.bashrc` file will make the change permanent.
