#!/bin/bash
now=$(date +%Y%m%d%H%M%S)
model="model$now"".pred"
python model.py --train data/en_es/en_es.slam.20171218.train --test data/en_es/en_es.slam.20171218.dev --pred out/en_es/$model
wait;
python eval.py --pred out/en_es/$model --key data/en_es/en_es.slam.20171218.dev.key 
