FROM alpine
RUN apk add --no-cache musl-dev gcc g++ gfortran fftw
RUN apk add --update make
RUN apk update && apk add ca-certificates wget && update-ca-certificates
WORKDIR /root
RUN wget http://www.openphase.de/upload/content/OpenPhase.V0.9.2.zip
RUN unzip OpenPhase.V0.9.2.zip
WORKDIR /root/OpenPhase.V0.9.2
RUN make && make install
