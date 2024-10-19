FROM ubuntu:22.04@sha256:0e5e4a57c2499249aafc3b40fcd541e9a456aab7296681a3994d631587203f97
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
