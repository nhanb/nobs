dev:
	nim cpp -r \
		--verbosity:0 \
		--hint[Processing]=off \
		-d:ssl \
		-o:nobs \
		./src/nobs.nim

clean:
	rm ./nobs
