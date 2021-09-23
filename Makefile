default: clean create-jks create-p12 create-pem create-readme create-checksum

clean:
	@rm -rf target

create-target:
	@mkdir -p target

create-pem: create-target
	@bash src/scripts/create-pem.sh

create-p12: create-target
	@sh src/scripts/create-p12.sh

create-jks: create-target
	@sh src/scripts/create-jks.sh

create-readme: create-target
	@sh src/scripts/create-readme.sh

create-checksum: create-target
	@cd target && shasum -a 256 * > sha256sums.txt
	@cd target && shasum -a 512 * > sha512sums.txt
