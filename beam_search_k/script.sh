for ((i=1;i<=25;i+=1))
do 
    mkdir ./beam_search_k/${i};
    python translate_beam.py --dicts ./data/en-fr/prepared --beam-size ${i} --output beam_search_k/${i}/model_translations_${i}.txt;
    bash scripts/postprocess.sh beam_search_k/${i}/model_translations_${i}.txt beam_search_k/${i}/model_translations_${i}.p.txt en;
    cat beam_search_k/${i}/model_translations_${i}.p.txt| sacrebleu data/en-fr/raw/test.en > beam_search_k/${i}/beamsearch_k${i}.txt
done