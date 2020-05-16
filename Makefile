default: clean create-pem create-p12 create-jks create-readme create-checksum

clean:
	@rm -rf target

create-target:
	@mkdir -p target

create-pem: create-target
	@sh src/scripts/create-pem.sh

create-p12: create-target
	@sh src/scripts/create-p12.sh

create-jks: create-target
	@sh src/scripts/create-jks.sh

create-readme: create-target
	@sh src/scripts/create-readme.sh

create-checksum: create-target
	@cd target && sha256sum * > sha256sums.txt
	@cd target && sha512sum * > sha512sums.txt
