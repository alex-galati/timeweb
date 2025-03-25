setup:
	@python3 -m venv env
	@if [ -d "env/bin" ]; then 												\
		. env/bin/activate && pip3 install -r requirements.txt;				\
	elif [[ -d env/Scripts ]]; then 										\
		. env/Scripts/activate && pip3 install -r requirements.txt;			\
	else                                    								\
		echo "Failed to create a virtual environment.";						\
	fi
	@export FLASK_RUN_HOST=0.0.0.0
	@export FLASK_RUN_PORT=6969	
test:
	@if [ -d "env/bin" ]; then 							\
		. env/bin/activate && pytest -vv;				\
	elif [[ -d env/Scripts ]]; then 					\
		. env/Scripts/activate && pytest -vv;			\
	else                                    			\
		echo "Failed to create a virtual environment.";	\
	fi

clean:
	rm -rf env
	rm -rf __pycache__
run:
	@if [ -d "env/bin" ]; then 							\
		. env/bin/activate && export FLASK_RUN_HOST=0.0.0.0 && export FLASK_RUN_PORT=6969 && flask run;\
	elif [[ -d env/Scripts ]]; then 					\
		. env/Scripts/activate && flask run;			\
	else                                    			\
		echo "Failed to create a virtual environment.";	\
	fi

