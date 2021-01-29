mcmd config set host

cd extra_entities
mcmd import -p benignNeoplasm_attributes.tsv --as attributes --in hcp01
mcmd import -p malignancy_attributes.tsv --as attributes --in hcp01
mcmd import -p geneticVariant_attributes.tsv --as attributes --in hcp01

cd ..

cp subject_attributes.tsv hcp01_attributes.tsv
sed -i '' "s/REPLACEME/hcp01/g" hcp01_attributes.tsv
mcmd import -p hcp01_attributes.tsv --as attributes --in hcp01
rm hcp01_attributes.tsv

#cd /Users/dieuwke.roelofs-prins/Downloads
#mcmd import -p hcp01_subject_2021-01-15_08_15_20.xlsx

