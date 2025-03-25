setup:
	@python3 -m venv env
	@if [ -d "env/bin" ]; then 							\
		. env/bin/activate;		 						\
		pip install -r requirements.txt;				\
	elif [[ -d env/Scripts ]]; then 					\
		. env/Scripts/activate; 						\
		pip install -r requirements.txt;				\
	else                                    			\
		echo "Failed to create a virtual environment.";	\
	fi
	@export FLASK_RUN_HOST=0.0.0.0
	@export FLASK_RUN_PORT=6969	
test:
	pytest -vv
clean:
	rm -rf env
	rm -rf __pycache__
	rm -rf .coverage
	rm -rf .pytest_cache 
run:
	flask run
