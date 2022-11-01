.PHONY: build deploy test clean

clean:
	terraform init
	terraform destroy -auto-approve
	rm -f hello-world.zip
	Make -C hello-world clean

deploy: build
	terraform init
	terraform apply -auto-approve

build:
	Make -C hello-world build