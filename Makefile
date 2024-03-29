all:
	make -C db_generator -B db_generator
	make -C trace_generator -B trace_generator

rules:
	db_generator/db_generator -bc parameter_files/acl2_seed 100 2 0.5 -0.1 test_rules

trace:
	trace_generator/trace_generator 1 0.1 10 test_rules
