default: clean create-pem create-p12

clean:
	@rm -rf target

create-pem:
	@mkdir -p target
	@sh script/create-pem.sh

create-p12:
	@mkdir -p target
	@sh script/create-p12.sh