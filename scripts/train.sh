#! /bin/bash

scripts=$(dirname "$0")
base=$(realpath $scripts/..)

models=$base/models
data=$base/data
tools=$base/tools

mkdir -p $models

num_threads=4
device=""

SECONDS=0

echo "Starting:"

echo "Model 1:"

(cd $tools/pytorch-examples/word_language_model &&
    CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python main.py --data $data/my_data \
        --epochs 40 \
        --log-interval 100 \
        --emsize 250 --nhid 250 --dropout 0 --tied \
        --save $models/model1.pt
)

echo "Model 2:"

(cd $tools/pytorch-examples/word_language_model &&
    CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python main.py --data $data/my_data \
        --epochs 40 \
        --log-interval 100 \
        --emsize 250 --nhid 250 --dropout 0.2 --tied \
        --save $models/model2.pt
)

echo "Model 3:"

(cd $tools/pytorch-examples/word_language_model &&
    CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python main.py --data $data/my_data \
        --epochs 40 \
        --log-interval 100 \
        --emsize 250 --nhid 250 --dropout 0.4 --tied \
        --save $models/model3.pt
)

echo "Model 4:"

(cd $tools/pytorch-examples/word_language_model &&
    CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python main.py --data $data/my_data \
        --epochs 40 \
        --log-interval 100 \
        --emsize 250 --nhid 250 --dropout 0.6 --tied \
        --save $models/model4.pt
)

echo "Model 5:"

(cd $tools/pytorch-examples/word_language_model &&
    CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python main.py --data $data/my_data \
        --epochs 40 \
        --log-interval 100 \
        --emsize 250 --nhid 250 --dropout 0.8 --tied \
        --save $models/model5.pt
)

echo "time taken:"
echo "$SECONDS seconds"

read -p "Press any key to exit"