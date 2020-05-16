default: clean create-p12

clean:
	@rm -rf target

create-p12:
	@mkdir -p target
	@sh script/create-p12.sh