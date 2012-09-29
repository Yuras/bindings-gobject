
all: build

debug: clean
	cabal configure --disable-optimization --disable-library-profiling --disable-shared

build:
	cabal build

clean:
	cabal clean

install: clean
	cabal install --haddock-hyperlink-sources
