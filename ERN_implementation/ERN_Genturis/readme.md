

# Molgenis Genturis Patient Registry

The GENTURIS registry is affiliated to the European Reference Network for all patients with a genetic tumour risk syndrome (ERN GENTURIS). The GENTURIS registry consist of a collection of common data elements for all genturis patients combined with disease-specific data elements for each of the thematic disease groups covered by ERN GENTURIS.
The GENTURIS registry wishes to accomplish the following aims:
-	To provide a sustainable, user-friendly and interoperable web-based registry platform that facilitates standardised registration of data on patients with a genturis known at participating Full Member, Affiliated Partner and non-member health care providers (HCPs) of ERN GENTURIS and sharing of data across Europe
-	To be a unique source of data of a large number of patients with a genturis or patients highly suspected of a genturis
-	To enable European research ranging from basic research to clinical trials on genturis
-	To accelerate the generation of new knowledge on genturis
---------------
- The ERN Genturis website: [https://www.genturis.eu](https://www.genturis.eu/l=eng/Home.html)
- Genturis Registry: [https://genturis-registry.eu](https://genturis-registry.eu)
- Minimal Dataset Genturis Registry

## What's in this repository?

The `ERN_Genturis` repository is part of the Rare Disease registries, [RD-Registry](https://github.com/molgenis/RD-Registry). This part of the repository contains files, scripts and other items needed for maintaining the Genturis Registry.

- [`data`](/ERN_implementation/ERN_Genturis/data/): This folder contains latest EMX file from the Genturis Registry. Options used in Patient Registry are codebooks, standard optionlist, enum, text, string, date and int values. For bulkupload it is necessary to know what codes need to be used to import data correctly.
-  [`templates`](/ERN_implementation/ERN_Genturis/templates): This folder contains a description of how to bulk upload data to the Genturis registry. And there are templates to use for bulk uploading patients. Check codebooks for correct identifiers.

