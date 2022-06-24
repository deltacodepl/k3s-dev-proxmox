.POSIX:
.PHONY: *
.EXPORT_ALL_VARIABLES:

KUBECONFIG = $(shell pwd)/proxmox/kubeconfig.yaml
KUBE_CONFIG_PATH = $(KUBECONFIG)

default: bootstrap wait

all: bootstrap wait

bootstrap:
	make -C bootstrap

wait:
	./scripts/wait-main-apps

tools:
	make -C tools
