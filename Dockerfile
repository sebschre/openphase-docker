FROM alpine
RUN apk add --no-cache musl-dev gcc g++ gfortran fftw-dev wget
RUN apk add --update make
WORKDIR /root
RUN wget http://www.icams.de/content/wp-content/uploads/2020/02/OpenPhase.V0.9.2.zip
RUN unzip OpenPhase.V0.9.2.zip
WORKDIR /root/OpenPhase.V0.9.2
RUN make && make examples
