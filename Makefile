.PHONY: tfjson
tfjson:
	cd terraform && terraform init && terraform plan -out tfplan.binary && terraform show -json tfplan.binary > tfplan.json