VERSION := $(shell git rev-parse --short HEAD)
IMG := quay.io/arschles/boom:${VERSION}
docker-build:
	docker build -t ${IMG} .

create-job:
		kubectl create -f jb.yaml

show-pods:
		kubectl get po -a

watch-job:
		kubectl get job megaboom -w

describe-job:
	kubectl describe job megaboom

delete-job:
	kubectl delete job megaboom
