.PHONY: install
install: ## install requirements and project in editable mode
	pip install pip==19.3.1
	pip install setuptools==49.6.0
	#pip install -r requirements_dev.txt --extra-index-url ${EXTRA_INDEX_RUNTIME_GDT}
	pip install -e .

clean: .clean-build .clean-pyc ## remove all build, test, coverage and Python artifacts

.clean-build: ## remove build artifacts
	rm -rf build dist .eggs .cache
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +

.clean-pyc: ## remove Python file artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +
