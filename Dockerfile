FROM haskell:9.2.8

ADD . /opt/tttool
WORKDIR /opt/tttool

RUN cabal update \
    && make
