FROM ubuntu:22.04@sha256:f9d633ff6640178c2d0525017174a688e2c1aef28f0a0130b26bd5554491f0da
ENV DEBIAN_FRONTEND=noninteractive \
	GLIBC_VERSION=2.38 \
	PREFIX_DIR=/usr/glibc-compat
RUN apt-get -q update \
	&& apt-get -qy install \
	bison \
	build-essential \
	gawk \
	gettext \
	openssl \
	python3 \
	texinfo \
	wget
COPY configparams /glibc-build/configparams
COPY builder /builder
ENTRYPOINT ["/builder"]
