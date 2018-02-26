#!/bin/bash
now=$(date +%Y%m%d%H%M%S)
model="out/en_es/model$now"".pred"
echo "training and writing test predictions to $model""..."
python model.py --train data/en_es/en_es.slam.20171218.train --test data/en_es/en_es.slam.20171218.dev --pred $model
#wait;
#python eval.py --pred $model --key data/en_es/en_es.slam.20171218.dev.key 
