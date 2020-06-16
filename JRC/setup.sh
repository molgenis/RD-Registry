#########################################################
## RD-Registry MOLGENIS app  only Common Data Elements ##
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

## First, create the package in which all ERN patient data will be kept.
## Give name that package should be called
## This will also form ERN registry user group.
read -p 'Package name: ' package

#sed -i '' "s/PACKAGE/$package/g" cde_attributes.tsv
#sed -i '' "s/PACKAGE/$package/g" hgnc_attributes.tsv
sed -i '' "s/PACKAGE/$package/g" sys_md_Package.tsv
mcmd import -p sys_md_Package.tsv

# Second, import codebook1 attributes.

cd codebook1
sh importGenericCodebook1AttributesAs.sh codebook1_onset
sh importGenericCodebook1AttributesAs.sh codebook1_patientstatus
sh importGenericCodebook1AttributesAs.sh codebook1_sex
sh importGenericCodebook1AttributesAs.sh codebook1_icf
sh importGenericCodebook1AttributesAs.sh codebook1_subClasshgnc

# Third, import codebook2 attributes.
cd ..
cd codebook2
sh importGenericCodebook2AttributesAs.sh codebook2_hpo
sh importGenericCodebook2AttributesAs.sh codebook2_ordo

# Fourth, import "special" codebooks.
mcmd import -p codebook_biobanks_attributes.tsv --as attributes --in $package
mcmd import -p codebook_hgnc_attributes.tsv --as attributes --in $package
mcmd import -p codebook_biobanks.tsv --as $packages_codebook_biobanks --in $package
mcmd import -p codebook_hgnc.tsv --as $packages_codebook_hgnc --in $package


#Fifth, import ERN RD-Registry model attributes.
mcmd import -p cde_attributes.tsv --as attributes --in $package

# sixth, upload GUI and required assets (make sure that in image all logos are uploaded)
mcmd import -p sys_StaticContent.tsv
cd ../img
#example commander script >need to adjust
#mcmd add logo -p analysis.png
