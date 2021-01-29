#########################################################
## RD-Registry MOLGENIS app ERN Genturis ##
#########################################################

## Runnable SH setup script. Work-in-progress!

## Prerequisites:
## - Git client (used: v2.8.1)
## - Docker desktop client (used: v2.2.0.5)
## - Python3 and pip3 (used: Python 3.7.2, pip 19.3.1)
## - Unix-like Shell environment

## Boot up a fresh MOLGENIS 8.5 Docker instance.
## Process can be screened or left open in Shell instance.
# git clone https://github.com/molgenis/docker.git
# cd docker/molgenis/8.5
# docker-compose up

## Download the RD-registry repository.
# git clone https://github.com/molgenis/RD-Registry.git

## For Docker helper scripts, see fairgenomes_molgenis_app/docker/ folder.
## Adjust these to your preference.
# sh up.sh
# sh down.sh
# sh nuke.sh

## MOLGENIS 8.5 Docker instance should be running at:
# open http://localhost:80/

## Also install MOLGENIS Commander 1.9 and verify that it works.
## See: https://github.com/molgenis/molgenis-tools-commander.
# pip3 install molgenis-commander==1.9 --force-reinstall
# mcmd --version

## Connect MOLGENIS Commander to the Docker instance.
## Follow the setup. If setup before, modify ~/.mcmd/mcmd.yaml.
## Lastly , ping server to see if connection is working
# mcmd
# mcmd ping

# Choose the right server to upload the data to
mcmd config set host

# Define the number of HCP's
n_hcps=25

## Set working dir to 'data' to start app setup
cd data

## First, create the all packages in which data from different HCPs will be kept.
## This will also form all user groups(to seperate different datasets).
## Later on aggeregates (so no patient detail will be shared) will be made for dashboard functionalities.

mcmd import -p sys_md_Package.tsv

# Second, import codebook1 attributes and content.
cd codebook1
sh importGenericCodebook1AttributesAs.sh codebook1_classVariant
sh importGenericCodebook1AttributesAs.sh codebook1_countryofresidence
sh importGenericCodebook1AttributesAs.sh codebook1_diagnosisData
sh importGenericCodebook1AttributesAs.sh codebook1_expertise
sh importGenericCodebook1AttributesAs.sh codebook1_icd10
sh importGenericCodebook1AttributesAs.sh codebook1_laterality
sh importGenericCodebook1AttributesAs.sh codebook1_patientstatus
sh importGenericCodebook1AttributesAs.sh codebook1_sex
sh importGenericCodebook1AttributesAs.sh codebook1_subClasscosmic

#content
mcmd import -p codebook1_classVariant.tsv --as genturis_codebook1_classVariant --in genturis
mcmd import -p codebook1_countryofresidence.tsv --as genturis_codebook1_countryofresidence --in genturis
mcmd import -p codebook1_diagnosisData.tsv --as genturis_codebook1_diagnosisData --in genturis
mcmd import -p codebook1_expertise.tsv --as genturis_codebook1_expertise --in genturis
mcmd import -p codebook1_icd10.tsv --as genturis_codebook1_icd10 --in genturis
mcmd import -p codebook1_laterality.tsv --as genturis_codebook1_laterality --in genturis
mcmd import -p codebook1_patientstatus.tsv --as genturis_codebook1_patientstatus --in genturis
mcmd import -p codebook1_sex.tsv --as genturis_codebook1_sex --in genturis
mcmd import -p codebook1_subClasscosmic.tsv --as genturis_codebook1_subClasscosmic --in genturis

#Third, import codebook2 attributes.
cd ..
cd codebook2
sh importGenericCodebook2AttributesAs.sh codebook2_hpo
sh importGenericCodebook2AttributesAs.sh codebook2_icdO3M
sh importGenericCodebook2AttributesAs.sh codebook2_icdO3T
sh importGenericCodebook2AttributesAs.sh codebook2_ordo
#content
mcmd import -p codebook2_hpo.tsv --as genturis_codebook2_hpo --in genturis
#mcmd import -p codebook2_icd11.tsv --as genturis_codebook2_icd11 --in genturis
mcmd import -p codebook2_icdO3M.tsv --as genturis_codebook2_icdO3M --in genturis
mcmd import -p codebook2_icdO3T.tsv --as genturis_codebook2_icdO3T --in genturis
mcmd import -p codebook2_ordo.tsv --as genturis_codebook2_ordo --in genturis

# Fourth, import "special" codebooks attributes and content.
cd ..
mcmd import -p codebook_cosmic_attributes.tsv --as attributes --in genturis
#content
mcmd import -p codebook_cosmic.tsv --as genturis_codebook_cosmic --in genturis

# Fifth, import extra_entities attributes. And content if already there (organisation,contactperson and diseasegroups)
cd extra_entities
# attributes
mcmd import -p extra_entities_attributes.tsv --as attributes --in genturis
mcmd import -p person_attributes.tsv --as attributes --in genturis
mcmd import -p organisation_attributes.tsv --as attributes --in genturis

extra_entities="benignNeoplasm_attributes.tsv geneticVariant_attributes.tsv malignancy_attributes.tsv"
for entity in $extra_entities;
 do
  mcmd import -p $entity --as attributes --in genturis
  for ((i=1;i<=$n_hcps;i++));
   do
    if [ ${#i} == 1 ]; then
     mcmd import -p $entity --as attributes --in hcp0$i
    else
     mcmd import -p $entity --as attributes --in hcp$i
    fi
   done
done

#content
mcmd import -p ageClass.tsv --as genturis_ageClass --in genturis
mcmd import -p BI-RADS.tsv --as genturis_BI-RADS --in genturis
mcmd import -p diagnosisSource.tsv --as genturis_diagnosisSource --in genturis
mcmd import -p familyRelation.tsv --as genturis_familyRelation --in genturis
mcmd import -p geneticTest.tsv --as genturis_geneticTest --in genturis
mcmd import -p GRCH.tsv --as genturis_GRCH --in genturis
mcmd import -p inclusionCriteria.tsv --as genturis_inclusionCriteria --in genturis
mcmd import -p materialType.tsv --as genturis_materialType --in genturis
mcmd import -p MMRstatus.tsv --as genturis_MMRstatus --in genturis
mcmd import -p mutationType.tsv --as genturis_mutationType --in genturis
mcmd import -p person.tsv --as genturis_person --in genturis
mcmd import -p organisation.tsv --as genturis_organisation --in genturis
mcmd import -p polypType.tsv --as genturis_polypType --in genturis
mcmd import -p receptorStatus.tsv --as genturis_receptorStatus --in genturis

#Sixth,import ERN RD-Registry patient attributes.
cd ..
cp subject_attributes.tsv genturis_attributes.tsv
sed -i '' "s/REPLACEME/genturis/g" genturis_attributes.tsv
mcmd import -p genturis_attributes.tsv --as attributes --in genturis
rm genturis_attributes.tsv

for ((i=1;i<=$n_hcps;i++));
 do
  if [ ${#i} == 1 ]; then
   hcp=hcp0$i
  else
   hcp=hcp$i
  fi
  cp subject_attributes.tsv ${hcp}_attributes.tsv
  sed -i '' "s/REPLACEME/$hcp/g" ${hcp}_attributes.tsv
  mcmd import -p ${hcp}_attributes.tsv --as attributes --in $hcp
  rm ${hcp}_attributes.tsv
done

# Seventh, upload GUI and required assets (make sure that in image all logos are uploaded)
#mcmd import -p sys_StaticContent.tsv
#cd ../img
#example commander script >need to adjust
#mcmd add logo -p analysis.png
