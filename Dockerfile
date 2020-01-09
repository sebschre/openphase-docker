FROM alpine
RUN apk add --no-cache musl-dev gcc g++ gfortran fftw
RUN apk add --update make
WORKDIR /root
COPY OpenPhase.V0.9.2.zip .
RUN unzip OpenPhase.V0.9.2.zip
WORKDIR /root/OpenPhase.V0.9.2
RUN make && make install
