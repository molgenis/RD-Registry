![ILIAD Registry](/images/ITHACA-logo.jpg)

# Molgenis ILIAD Patient Registry

The main objective is to set up an interoperable registry dedicated to rare diseases within the scope of ITHACA called **ILIAD Rare Diseases patient registry**: an International Library of Intellectual disability and Anomalies of Development .

We intend to develop a single, trans-ERN “meta-registry” (ILIAD) of patients with developmental anomalies (dysmorphic/Multiple Congenitital Anomalies syndromes and/or Iintellectual Disabilities) recruited by ERN ITHACA, patients with several developmental disorders affecting the head recruited by ERN-CRANIO, and patients with connective tissue disorders recruited by ERN SKIN.

ILIAD will register 3 types of patients:

- genetically-defined patients (patients must have a genetic/genomic diagnosis to be recorded)
- clinically defined patients (patients must have a precise clinical diagnosis with a disease-level ORPHA code)
- and undiagnosed patients

--------
- The ERN ITHACA website: [https://ern-ithaca.eu/](https://ern-ithaca.eu/)
- ILIAD Registry: [https://ern-ithaca.iliad-registry.eu/](https://ern-ithaca.iliad-registry.eu/)
- [Minimal Dataset ILIAD Registry](/ERN_implementation/ERN_ITHACA/data/ILIAD_datamodel_v01_2021-11-04.xlsx) 

## What's in this repository?

The `ERN_ITHACA` repository is part of the Rare Disease registries, [RD-Registry](https://github.com/molgenis/RD-Registry). This part of the repository contains files, scripts and other items needed for maintaining and setting up the ILIAD Registry.

- [`data`](/ERN_implementation/ERN_ITHACA/data/): This folder contains latest EMX file from the ILIAD Registry. Options used in Patient Registry are codebooks, standard optionlist, enum, text, string, date and int values. For bulkupload it is necessary to know what codes need to be used to import data correctly.
- [`images`](/ERN_implementation/ERN_ITHACA/images/): This folder contains images used on ILIAD Registry and in this repository.
- [`technicalDecisions`](/ERN_implementation/ERN_ITHACA/technicalDecisions/): This folder contains text files regarding technical decisions made for the ILIAD Registry. The decision files are only used on specific technical implementation for the ILIAD Registry, if there are no decision files then a "normal" Molgenis setup is used.
-[`templates`](/ERN_implementation/ERN_ITHACA/templates): This folder contains a description of how to bulk upload data to the ILIAD registry. And there are templates to use for bulk uploading patients. Check codebooks for correct identifiers.
