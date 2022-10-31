.PHONY: build deploy test clean

clean:
	terraform destroy -auto-approve
	rm -f hello-world.zip
	Make -C hello-world clean

deploy: build
	terraform apply -auto-approve
	echo "$$(terraform output -raw base_url)"

build:
	Make -C hello-world build