build:
	nix-shell --run "make build_"
build_:
	cobc -x $(shell agar-config --libs | sed "s/-Wl,-rpath,/-L/" | sed "s/-ljpeg//") hello.cob 
run:	
	./hello
