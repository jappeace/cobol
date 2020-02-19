build:
	nix-shell --run "make build_"
build_:
	cobc -L $(AGAR)/lib -x hello.cob
run:	
	./hello
