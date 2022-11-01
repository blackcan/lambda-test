.PHONY: build deploy test clean

clean:
	terraform init
	terraform destroy -auto-approve
	rm -f hello-world.zip
	$(MAKE) -C hello-world clean

deploy: build
	terraform init
	terraform apply -auto-approve

build:
	$(MAKE) -C hello-world build