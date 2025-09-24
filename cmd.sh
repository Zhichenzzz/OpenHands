./evaluation/benchmarks/swe_bench/scripts/run_infer.sh llm.qwen HEAD CodeActAgent 1 100 100 "princeton-nlp/SWE-bench_Lite" test
./evaluation/benchmarks/swe_bench/scripts/eval_infer.sh

## install
conda create -n oh python=3.12
conda activate oh
pip install -e .
pip install poetry nodejs
make build
make setup-config
make run
poetry run pytest ./tests/unit/test_*.py
