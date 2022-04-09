BUILD_PATH 					?= $(shell pwd)

HELM      					?= helm
HELM_OUTPUT_DIR     ?= $(BUILD_PATH)/tmp

export 

# helm

helm-add-cypherfox:
	@$(HELM) repo add cypherfox https://cypherfox.github.io/charts/
	@$(HELM) repo update

helm-lint:
	$(HELM) lint charts/*