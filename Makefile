.PHONY := init plan apply serve
.DEFAULT_GOAL := apply

ifndef AWS_SESSION_TOKEN
  $(error Not logged in, please run 'awsume')
endif

init:
	@cd terraform && terraform init -upgrade

plan: init
	@cd terraform && terraform plan

apply: init
	@cd terraform && terraform apply

serve:
	@hugo server -D --bind 0.0.0.0
