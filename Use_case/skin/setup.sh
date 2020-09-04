#########################################################
## RD-Registry MOLGENIS app ERN SKIN ##
#########################################################

## Runnable SH setup script. Work-in-progress!

## Prerequisites:
## - Git client (used: v2.8.1)
## - Docker desktop client (used: v2.2.0.5)
## - Python3 and pip3 (used: Python 3.7.2, pip 19.3.1)
## - Unix-like Shell environment

## Boot up a fresh MOLGENIS 8.3 Docker instance.
## Process can be screened or left open in Shell instance.
# git clone https://github.com/molgenis/docker.git
# cd docker/molgenis/8.3
# docker-compose up

## Download the RD-registry repository.
# git clone https://github.com/molgenis/RD-Registry.git

## For Docker helper scripts, see fairgenomes_molgenis_app/docker/ folder.
## Adjust these to your preference.
# sh up.sh
# sh down.sh
# sh nuke.sh

## MOLGENIS 8.3 Docker instance should be running at:
# open http://localhost:80/

## Also install MOLGENIS Commander 1.7 and verify that it works.
## See: https://github.com/molgenis/molgenis-tools-commander.
# pip3 install molgenis-commander==1.7 --force-reinstall
# mcmd --version

## Connect MOLGENIS Commander to the Docker instance.
## Follow the setup. If setup before, modify ~/.mcmd/mcmd.yaml.
## Lastly , ping server to see if connection is working
# mcmd
# mcmd ping

## Set working dir to 'data' to start app setup
cd data

## First, create the package "skin" in which data will be kept.
mcmd import -p sys_md_Package.tsv


# Second, import codebook1 attributes and content.
cd codebook1
sh importGenericCodebook1AttributesAs.sh codebook1_clinicaldiagn
sh importGenericCodebook1AttributesAs.sh codebook1_classVariant
sh importGenericCodebook1AttributesAs.sh codebook1_mutationAbnormality
sh importGenericCodebook1AttributesAs.sh codebook1_countryofresidence
sh importGenericCodebook1AttributesAs.sh codebook1_countofbirth
sh importGenericCodebook1AttributesAs.sh codebook1_sex
sh importGenericCodebook1AttributesAs.sh codebook1_onset
sh importGenericCodebook1AttributesAs.sh codebook1_patientstatus
sh importGenericCodebook1AttributesAs.sh codebook1_icf
sh importGenericCodebook1AttributesAs.sh codebook1_subClasshgnc
sh importGenericCodebook1AttributesAs.sh codebook1_expertise

#content
mcmd import -p codebook1_clinicaldiagn.tsv --as skin_codebook1_clinicaldiagn --in skin
mcmd import -p codebook1_classVariant.tsv --as skin_codebook1_classVariant --in skin
mcmd import -p codebook1_mutationAbnormality.tsv --as skin_codebook1_mutationAbnormality --in skin
mcmd import -p codebook1_countofbirth.tsv --as skin_codebook1_countofbirth --in skin
mcmd import -p codebook1_countryofresidence.tsv --as skin_codebook1_countryofresidence --in skin
mcmd import -p codebook1_expertise.tsv --as skin_codebook1_expertise --in skin
mcmd import -p codebook1_onset.tsv --as skin_codebook1_onset --in skin
mcmd import -p codebook1_patientstatus.tsv --as skin_codebook1_patientstatus --in skin
mcmd import -p codebook1_sex.tsv --as skin_codebook1_sex --in skin
mcmd import -p codebook1_icf.tsv --as skin_codebook1_icf --in skin
mcmd import -p codebook1_subClasshgnc.tsv --as skin_codebook1_subClasshgnc --in skin

#Third, import codebook2 attributes.
cd ..
cd codebook2
sh importGenericCodebook2AttributesAs.sh codebook2_hpo

#content
mcmd import -p codebook2_hpo.tsv --as skin_codebook2_hpo --in skin

# Fourth, import extra_entities attributes. And content if already there (organisation,contactperson and diseasegroups)
cd ..
cd extra_entities
mcmd import -p hgnc_attributes.tsv --as attributes --in skin
mcmd import -p diseaseGroup_attributes.tsv --as attributes --in skin
mcmd import -p person_attributes.tsv --as attributes --in skin
mcmd import -p organisation_attributes.tsv --as attributes --in skin

#content
mcmd import -p hgnc.tsv --as skin_hgnc --in skin
mcmd import -p diseaseGroup.tsv --as skin_diseaseGroup --in skin

#Fifth,import ERN RD-Registry patient attributes.
cd ..
mcmd import -p subject_attributes.tsv --as attributes --in skin


# Sixth, upload GUI and required assets (make sure that in image all logos are uploaded)
#mcmd import -p sys_StaticContent.tsv
#cd ../img
#example commander script >need to adjust
#mcmd add logo -p analysis.png
