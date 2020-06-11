# Common Data Elements (JRC)

The "Set of common data elements for Rare Diseases Registration" is the first practical instrument released by the EU RD Platform aiming at increasing interoperability of RD registries.

It contains 16 data elements to be registered by each rare disease registry across Europe, which are considered to be essential for further research. They refer to patient's personal data, diagnosis, disease history and care pathway, information for research purposes and about disability.

The "Set of common data elements for Rare Diseases Registration" was produced by a Working Group coordinated by the JRC and composed of experts from EU projects which worked on common data sets: EUCERD Joint Action, EPIRARE and RD-Connect.
For more [information](https://eu-rd-platform.jrc.ec.europa.eu/set-of-common-data-elements_en).

Basic view on how data elements are represented in Molgenis RD registry.
![JRC](/JRC/JRC_CDE.png)


## Common Data Elements
To make the RD registry Interoperable (the 'I' in FAIR), it is important to use standard ontologies and use the value types of the ontologies. Therefore In this view all data elements are represented with their Preferred ontology term and if applicable the value types are pointing to the preferred ontology code. Some values are not complied with preferred ontologies, they were supplied by the JRC in this [document](https://eu-rd-platform.jrc.ec.europa.eu/sites/default/files/CDS/EU_RD_Platform_CDS_Final.pdf).

| Data element   | Compulsory / optional | Preferred ontology term| Value types | Issue Number |
|---------------|-----------------------|----------------------------|-------------|--------------|
|EUPID | compulsory | ...|ID [string] |.|
|Sex | compulsory | [SIO:010029](http://semanticscience.org/resource/SIO_010029.rdf)| Male [SIO:010048](http://semanticscience.org/resource/SIO_010048)  <br> Female [SIO:010048](http://semanticscience.org/resource/SIO_010048) <br> Undetermined []() <br> Foetus []()|.|
| Date of birth | compulsory | [NCIT:C68615](https://www.ebi.ac.uk/ols/ontologies/ncit/terms?iri=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FNCIT_C68615)|YYYY-MM-DD|.|
|Inclusion status | optional | [SNOMEDCT:246097001](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FSNOMEDCT%2F246097001) |   Alive / Dead / Lost in follow-up / Opted-out |.|
|Date of Death | optional| [NCIT:C70810](https://www.ebi.ac.uk/ols/ontologies/ncit/terms?iri=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FNCIT_C70810)|YYYY-MM-DD|.|
|First contact with specialised center | optional | [LOINC:MTHU048806](https://bioportal.bioontology.org/ontologies/LOINC?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FLNC%2FMTHU048806) | YYYY-MM-DD |.|
|Age of onset | optional | [HP:0003674](http://bioportal.bioontology.org/ontologies/HP/?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FHP_0003674) | Antenatal [HP:0030674](http://bioportal.bioontology.org/ontologies/HP/?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FHP_0030674)  <br> At birth [HP:0003577](http://bioportal.bioontology.org/ontologies/HP/?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FHP_0003577) <br> Date [NCIT:C25164](https://www.ebi.ac.uk/ols/ontologies/ncit/terms?iri=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FNCIT_C25164) <br> Undetermined |.|
|Age at diagnosis | optional | [SNOMEDCT:423493009](http://bioportal.bioontology.org/ontologies/SNOMEDCT/?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FSNOMEDCT%2F423493009) |Antenatal [HP:0030674](http://bioportal.bioontology.org/ontologies/HP/?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FHP_0030674)  <br> At birth [HP:0003577](http://bioportal.bioontology.org/ontologies/HP/?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FHP_0003577) <br> Date [NCIT:C25164](https://www.ebi.ac.uk/ols/ontologies/ncit/terms?iri=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FNCIT_C25164) <br> Undetermined |.|
|Orpha code (Diagnosis rare disease)| optional |[ORDO](http://bioportal.bioontology.org/ontologies/ORDO)|Codebook based on ontological terms|.|
|HGNC (Genetic diagnosis)| optional| [HGNC](http://bioportal.bioontology.org/ontologies/HGNC)|Codebook based on ontological terms|.|
| HPO (Phenotype) | optional | [HPO](http://bioportal.bioontology.org/ontologies/HOOM)|Codebook based on ontological terms|.|
| Agreement to be contacted for research| compulsory| NA or [DUO:0000042](https://www.ebi.ac.uk/ols/ontologies/duo/terms?iri=http://purl.obolibrary.org/obo/DUO_0000042) | [boolean]()|.|
|Consent reuse date | compulsory| NA or [DUO:0000017](https://www.ebi.ac.uk/ols/ontologies/duo/terms?iri=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FDUO_0000017&viewMode=PreferredRoots&siblings=false)| [boolean]()|.|
| Biological sample available | optional |[NCIT:C70699](https://www.ebi.ac.uk/ols/ontologies/ncit/terms?iri=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FNCIT_C70699)| [boolean]()|.|
|Biobank| optional| [OMIABIS:0000000](https://www.ebi.ac.uk/ols/ontologies/omiabis/terms?iri=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FOMIABIS_0000000)| Codebook based on [BBMRI-ERIC directory](https://directory.bbmri-eric.eu/menu/main/app-molgenis-app-biobank-explorer/biobankexplorer)|.|
|ICF (Classifiaction disability) | optional|[ICF](http://bioportal.bioontology.org/ontologies/ICF)|Codebook based on ontological terms|.|
