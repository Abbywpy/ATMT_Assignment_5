python translate_beam.py --dicts ./data/en-fr/prepared --beam-size 5 --output model_translations_sr.txt;
bash scripts/postprocess.sh model_translations_sr.txt model_translations_sr.p.txt en;
cat model_translations_sr.p.txt| sacrebleu data/en-fr/raw/test.en > beamsearch_sr.txt