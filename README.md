# docker-glibc-builder

A glibc binary package builder in Docker. Produces a glibc binary package that can be imported into a rootfs to run applications dynamically linked against glibc.

## Usage

Build a glibc package based on version 2.38 with a prefix of `/usr/glibc-compat`:

    docker run --rm --env STDOUT=1 ghcr.io/harryzcy/glibc-builder 2.38 /usr/glibc-compat > glibc-bin.tar.gz

You can also keep the container around and copy out the resulting file:

    docker run --name glibc-binary ghcr.io/harryzcy/glibc-builder 2.38 /usr/glibc-compat
    docker cp glibc-binary:/glibc-bin-2.38.tar.gz ./
    docker rm glibc-binary
