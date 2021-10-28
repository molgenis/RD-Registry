#########################################################
## RD-Registry MOLGENIS app ERN Genturis ##
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

## First, create the all packages in which data from different HCPs will be kept.
## This will also form all user groups(to seperate different datasets).
## Later on aggeregates (so no patient detail will be shared) will be made for dashboard functionalities.
mcmd import -p sys_md_Package.tsv


# Second, import codebook1 attributes and content.
cd codebook1
sh importGenericCodebook1AttributesAs.sh codebook1_countryofresidence
sh importGenericCodebook1AttributesAs.sh codebook1_classVariant
sh importGenericCodebook1AttributesAs.sh codebook1_diagnosisData
sh importGenericCodebook1AttributesAs.sh codebook1_diagnosisstatus
sh importGenericCodebook1AttributesAs.sh codebook1_expertise
sh importGenericCodebook1AttributesAs.sh codebook1_laterality
sh importGenericCodebook1AttributesAs.sh codebook1_materialtype
sh importGenericCodebook1AttributesAs.sh codebook1_modeDiagnosis
sh importGenericCodebook1AttributesAs.sh codebook1_mutationAbnormality
sh importGenericCodebook1AttributesAs.sh codebook1_progression
sh importGenericCodebook1AttributesAs.sh codebook1_severity
sh importGenericCodebook1AttributesAs.sh codebook1_onset
sh importGenericCodebook1AttributesAs.sh codebook1_patientstatus
sh importGenericCodebook1AttributesAs.sh codebook1_sex
sh importGenericCodebook1AttributesAs.sh codebook1_spatial
sh importGenericCodebook1AttributesAs.sh codebook1_subClasscosmic
sh importGenericCodebook1AttributesAs.sh codebook1_temporal
sh importGenericCodebook1AttributesAs.sh codebook1_typeofsequencing
#content
mcmd import -p codebook1_countryofresidence.tsv --as genturis_codebook1_countryofresidence --in genturis
mcmd import -p codebook1_diagnosisData.tsv --as genturis_codebook1_diagnosisData --in genturis
mcmd import -p codebook1_diagnosisstatus.tsv --as genturis_codebook1_diagnosisstatus --in genturis
mcmd import -p codebook1_expertise.tsv --as genturis_codebook1_expertise --in genturis
mcmd import -p codebook1_laterality.tsv --as genturis_codebook1_laterality --in genturis
mcmd import -p codebook1_materialtype.tsv --as genturis_codebook1_materialtype --in genturis
mcmd import -p codebook1_modeDiagnosis.tsv --as genturis_codebook1_modeDiagnosis --in genturis
mcmd import -p codebook1_mutationAbnormality.tsv --as genturis_codebook1_mutationAbnormality --in genturis
mcmd import -p codebook1_onset.tsv --as genturis_codebook1_onset --in genturis
mcmd import -p codebook1_patientstatus.tsv --as genturis_codebook1_patientstatus --in genturis
mcmd import -p codebook1_progression.tsv --as genturis_codebook1_progression --in genturis
mcmd import -p codebook1_severity.tsv --as genturis_codebook1_severity --in genturis
mcmd import -p codebook1_sex.tsv --as genturis_codebook1_sex --in genturis
mcmd import -p codebook1_spatial.tsv --as genturis_codebook1_spatial --in genturis
mcmd import -p codebook1_subClasscosmic.tsv --as genturis_codebook1_subClasscosmic --in genturis
mcmd import -p codebook1_temporal.tsv --as genturis_codebook1_temporal --in genturis
mcmd import -p codebook1_typeofsequencing.tsv --as genturis_codebook1_typeofsequencing --in genturis
mcmd import -p codebook1_classVariant.tsv --as genturis_codebook1_classVariant --in genturis

#Third, import codebook2 attributes.
cd ..
cd codebook2
sh importGenericCodebook2AttributesAs.sh codebook2_ERO
sh importGenericCodebook2AttributesAs.sh codebook2_icdO3
sh importGenericCodebook2AttributesAs.sh codebook2_hpo
sh importGenericCodebook2AttributesAs.sh codebook2_ordo
#content
mcmd import -p codebook2_ERO.tsv --as genturis_codebook2_ERO --in genturis
mcmd import -p codebook2_hpo.tsv --as genturis_codebook2_hpo --in genturis
mcmd import -p codebook2_icdO3.tsv --as genturis_codebook2_icdO3 --in genturis
mcmd import -p codebook2_ordo.tsv --as genturis_codebook2_ordo --in genturis

# Fourth, import extra_entities attributes. And content if already there (organisation,contactperson and diseasegroups)
cd ..
cd extra_entities
mcmd import -p variant_attributes.tsv --as attributes --in genturis
mcmd import -p variant_attributes.tsv --as attributes --in hcp01
mcmd import -p variant_attributes.tsv --as attributes --in hcp02
mcmd import -p variant_attributes.tsv --as attributes --in hcp03
mcmd import -p variant_attributes.tsv --as attributes --in hcp04
mcmd import -p variant_attributes.tsv --as attributes --in hcp05
mcmd import -p variant_attributes.tsv --as attributes --in hcp06
mcmd import -p variant_attributes.tsv --as attributes --in hcp07
mcmd import -p variant_attributes.tsv --as attributes --in hcp08
mcmd import -p variant_attributes.tsv --as attributes --in hcp09
mcmd import -p variant_attributes.tsv --as attributes --in hcp11
mcmd import -p variant_attributes.tsv --as attributes --in hcp12
mcmd import -p variant_attributes.tsv --as attributes --in hcp13
mcmd import -p variant_attributes.tsv --as attributes --in hcp14
mcmd import -p variant_attributes.tsv --as attributes --in hcp15
mcmd import -p variant_attributes.tsv --as attributes --in hcp16
mcmd import -p variant_attributes.tsv --as attributes --in hcp17
mcmd import -p variant_attributes.tsv --as attributes --in hcp18
mcmd import -p variant_attributes.tsv --as attributes --in hcp19
mcmd import -p variant_attributes.tsv --as attributes --in hcp20
mcmd import -p variant_attributes.tsv --as attributes --in hcp21
mcmd import -p variant_attributes.tsv --as attributes --in hcp22
mcmd import -p variant_attributes.tsv --as attributes --in hcp23
mcmd import -p variant_attributes.tsv --as attributes --in hcp24
mcmd import -p variant_attributes.tsv --as attributes --in hcp25
mcmd import -p variant_attributes.tsv --as attributes --in hcp10
mcmd import -p tumor_attributes.tsv --as attributes --in genturis
mcmd import -p tumor_attributes.tsv --as attributes --in hcp02
mcmd import -p tumor_attributes.tsv --as attributes --in hcp03
mcmd import -p tumor_attributes.tsv --as attributes --in hcp04
mcmd import -p tumor_attributes.tsv --as attributes --in hcp05
mcmd import -p tumor_attributes.tsv --as attributes --in hcp06
mcmd import -p tumor_attributes.tsv --as attributes --in hcp07
mcmd import -p tumor_attributes.tsv --as attributes --in hcp08
mcmd import -p tumor_attributes.tsv --as attributes --in hcp09
mcmd import -p tumor_attributes.tsv --as attributes --in hcp10
mcmd import -p tumor_attributes.tsv --as attributes --in hcp11
mcmd import -p tumor_attributes.tsv --as attributes --in hcp13
mcmd import -p tumor_attributes.tsv --as attributes --in hcp14
mcmd import -p tumor_attributes.tsv --as attributes --in hcp15
mcmd import -p tumor_attributes.tsv --as attributes --in hcp16
mcmd import -p tumor_attributes.tsv --as attributes --in hcp17
mcmd import -p tumor_attributes.tsv --as attributes --in hcp18
mcmd import -p tumor_attributes.tsv --as attributes --in hcp19
mcmd import -p tumor_attributes.tsv --as attributes --in hcp20
mcmd import -p tumor_attributes.tsv --as attributes --in hcp21
mcmd import -p tumor_attributes.tsv --as attributes --in hcp22
mcmd import -p tumor_attributes.tsv --as attributes --in hcp23
mcmd import -p tumor_attributes.tsv --as attributes --in hcp24
mcmd import -p tumor_attributes.tsv --as attributes --in hcp25
mcmd import -p tumor_attributes.tsv --as attributes --in hcp01
mcmd import -p tumor_attributes.tsv --as attributes --in hcp12
mcmd import -p person_attributes.tsv --as attributes --in genturis
mcmd import -p organisation_attributes.tsv --as attributes --in genturis
mcmd import -p family_attributes.tsv --as attributes --in genturis
mcmd import -p diseaseGroup_attributes.tsv --as attributes --in genturis
#content
mcmd import -p diseaseGroup.tsv --as genturis_diseaseGroup --in genturis
mcmd import -p _person.tsv --as genturis_person --in genturis
mcmd import -p organisation.tsv --as genturis_organisation --in genturis

# Fifth, import "special" codebooks attributes and content.
cd ..
mcmd import -p codebook_biobanks_attributes.tsv --as attributes --in genturis
mcmd import -p codebook_basisDiagnosis_attributes.tsv --as attributes --in genturis
mcmd import -p codebook_cosmic_attributes.tsv --as attributes --in genturis
#content
mcmd import -p codebook_biobanks.tsv --as genturis_codebook_biobanks --in genturis
mcmd import -p codebook_basisDiagnosis.tsv --as genturis_codebook_basisDiagnosis --in genturis
mcmd import -p codebook_cosmic.tsv --as genturis_codebook_cosmic --in genturis

#Sixth, import subset of HPO terms attributes and content
cd hpo_subset
sh importGenerichpoSubsetAttributesAs.sh hpoBehaviour
sh importGenerichpoSubsetAttributesAs.sh hpoCardio
sh importGenerichpoSubsetAttributesAs.sh hpoCranio
sh importGenerichpoSubsetAttributesAs.sh hpoCutan
sh importGenerichpoSubsetAttributesAs.sh hpoEar
sh importGenerichpoSubsetAttributesAs.sh hpoEye
sh importGenerichpoSubsetAttributesAs.sh hpoGastro
sh importGenerichpoSubsetAttributesAs.sh hpoGenito
sh importGenerichpoSubsetAttributesAs.sh hpoGrowth
sh importGenerichpoSubsetAttributesAs.sh hpoMusco
sh importGenerichpoSubsetAttributesAs.sh hpoNeuro
sh importGenerichpoSubsetAttributesAs.sh hpoRespitory
#content
mcmd import -p hpoBehaviour.tsv --as genturis_hpoBehaviour --in genturis
mcmd import -p hpoCardio.tsv --as genturis_hpoCardio --in genturis
mcmd import -p hpoCranio.tsv --as genturis_hpoCranio --in genturis
mcmd import -p hpoCutan.tsv --as genturis_hpoCutan --in genturis
mcmd import -p hpoEar.tsv --as genturis_hpoEar --in genturis
mcmd import -p hpoEye.tsv --as genturis_hpoEye --in genturis
mcmd import -p hpoGastro.tsv --as genturis_hpoGastro --in genturis
mcmd import -p hpoGenito.tsv --as genturis_hpoGenito --in genturis
mcmd import -p hpoGrowth.tsv --as genturis_hpoGrowth --in genturis
mcmd import -p hpoMusco.tsv --as genturis_hpoMusco --in genturis
mcmd import -p hpoNeuro.tsv --as genturis_hpoNeuro --in genturis
mcmd import -p hpoRespitory.tsv --as genturis_hpoRespitory --in genturis

#Seventh,import ERN RD-Registry patient attributes.
cd ..
mcmd import -p subject_attributes.tsv --as attributes --in genturis

cd hcps
mcmd import -p subject01_attributes.tsv --as attributes --in hcp01
mcmd import -p subject02_attributes.tsv --as attributes --in hcp02
mcmd import -p subject03_attributes.tsv --as attributes --in hcp03
mcmd import -p subject04_attributes.tsv --as attributes --in hcp04
mcmd import -p subject05_attributes.tsv --as attributes --in hcp05
mcmd import -p subject06_attributes.tsv --as attributes --in hcp06
mcmd import -p subject07_attributes.tsv --as attributes --in hcp07
mcmd import -p subject08_attributes.tsv --as attributes --in hcp08
mcmd import -p subject09_attributes.tsv --as attributes --in hcp09
mcmd import -p subject10_attributes.tsv --as attributes --in hcp10
mcmd import -p subject11_attributes.tsv --as attributes --in hcp11
mcmd import -p subject12_attributes.tsv --as attributes --in hcp12
mcmd import -p subject13_attributes.tsv --as attributes --in hcp13
mcmd import -p subject14_attributes.tsv --as attributes --in hcp14
mcmd import -p subject15_attributes.tsv --as attributes --in hcp15
mcmd import -p subject16_attributes.tsv --as attributes --in hcp16
mcmd import -p subject17_attributes.tsv --as attributes --in hcp17
mcmd import -p subject18_attributes.tsv --as attributes --in hcp18
mcmd import -p subject19_attributes.tsv --as attributes --in hcp19
mcmd import -p subject20_attributes.tsv --as attributes --in hcp20
mcmd import -p subject21_attributes.tsv --as attributes --in hcp21
mcmd import -p subject22_attributes.tsv --as attributes --in hcp22
mcmd import -p subject23_attributes.tsv --as attributes --in hcp23
mcmd import -p subject24_attributes.tsv --as attributes --in hcp24
mcmd import -p subject25_attributes.tsv --as attributes --in hcp25


# Eight, upload GUI and required assets (make sure that in image all logos are uploaded)
#mcmd import -p sys_StaticContent.tsv
#cd ../img
#example commander script >need to adjust
#mcmd add logo -p analysis.png
