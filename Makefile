tttool: src/*.hs
	# cabal update
	cabal install --only-dependencies
	cabal install exe:tttool --install-method=copy --overwrite-policy=always

all: tttool libtiptoi gameanalyse makegraphic

libtiptoi: libtiptoi.c
	gcc -g -o libtiptoi libtiptoi.c

gameanalyse: gameanalyse.c  
	gcc -g -o gameanalyse gameanalyse.c

makegraphic: makegraphic.c
	gcc -g -o makegraphic makegraphic.c -lpng
