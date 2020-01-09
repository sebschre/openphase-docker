FROM alpine
RUN apk add --no-cache musl-dev gcc g++ gfortran wget
RUN apk add --update make
WORKDIR /root
RUN wget http://www.openphase.de/upload/content/OpenPhase.V0.9.2.zip
RUN unzip OpenPhase.V0.9.2.zip
RUN wget http://www.fftw.org/fftw-3.3.8.tar.gz
RUN tar -xzf fftw-3.3.8.tar.gz
WORKDIR /root/fftw-3.3.8
RUN ./configure --enable-threads
RUN make %% make install
WORKDIR /root/OpenPhase.V0.9.2
RUN make && make examples
