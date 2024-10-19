FROM ubuntu:24.04@sha256:99c35190e22d294cdace2783ac55effc69d32896daaa265f0bbedbcde4fbe3e5
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
