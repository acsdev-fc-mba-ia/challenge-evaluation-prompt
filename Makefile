pull-prompt:
	python src/pull_prompts.py

push-prompt:
	python src/push_prompts.py


# Evaluation
metrics:
	python src/metrics.py
	
evaluate:
	python src/evaluate.py

# Test
test:
	pytest tests/test_prompts.py -v --tb=short