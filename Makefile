help: 	## Print this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

setup: 	## python virtual environment
	python3 -m venv .venv
	VIRTUAL_ENV_DISABLE_PROMPT=true source .venv/bin/activate;\
	pip install --upgrade pip;\
	pip install -r requirements.txt

playbook=archlinux-workstation.yml

run: 	## run main playbook
	VIRTUAL_ENV_DISABLE_PROMPT=true source .venv/bin/activate;\
	env ANSIBLE_FORCE_COLOR=true ansible-playbook -i hosts $(playbook) -K
