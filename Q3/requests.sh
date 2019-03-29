#!/bin/bash

START=1
END=$1
for i in $(seq $START $END)
do
    echo `curl -X POST "http://localhost:8080/algorithm/BayesNet" -H "accept: text/uri-list" -H "Content-Type: multipart/form-data" -F "estimator=SimpleEstimator" -F "estimatorParams=0.5" -F "searchAlgorithm=local.K2" -F "useADTree=" -F "validationNum=10" -F "searchParams=-P 1 -S BAYES" -F "datasetUri=" -F "validation=CrossValidation" -F "file=@soybean.arff"`
done
echo All done