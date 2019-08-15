.PHONY: serve build install bom

serve: build
	jekyll serve

build:
	jekyll build

install:
	echo "Installing git-secrets from awslabs..."
	brew install git-secrets
	echo "Adding git-secrets config..."
	cat scripts/git-secrets >> .git/config
	echo "Installing pre-commit hook"
	touch .git/hooks/pre-commit || exit
	echo "Making pre-commit hook executable"
	chmod u+x .git/hooks/pre-commit

bom:
	rm -f bill_of_materials.csv
	python bom/bom.py hardware/Palm.xml _data/bill_of_materials.csv
