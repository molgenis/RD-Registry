# Rare Disease (RD) Patient Registry in MOLGENIS App

Rare Disease patient registries are scattered throughout Europe, and the EU aims to provide a consistent instrument to improve knowledge, diagnosis, and treatment of rare diseases for researchers, healthcare providers, patients, and policy-makers. As part of the [3rd Health Programme Work Plan](https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/opportunities/topic-details/pj-01-2019), the EU has set out to make it possible for all European Reference Networks (ERNs) to develop RD registries.


[MOLGENIS](https://www.molgenis.org) is a tool that facilitates the creation of RD registries. We have been working on implementing the needs of four ERNs to create specific RD registries.

To learn more about the specific ERN implementations, please refer to the following links:
* [Genturis](/ERN_implementation/ERN_Genturis/)
* [SKIN](/ERN_implementation/ERN_SKIN/)
* [ITHACA](/ERN_implementation/ERN_ITHACA/)
* [CRANIO](https://ern-cranio.eu)


## Getting Started

TThis repository is intended to help you set up your own RD registry in MOLGENIS. Keep in mind that there are multiple ways to implement an RD registry, and that if specific needs are not represented in the given implementations of the four ERNs, it is possible to add self-generated content that is needed for your own registry. For more information, please visit our [gitbook](https://molgenis.gitbook.io/molgenis/).

The following steps outline the process:

1. Collect input on what needs to be registered in your registry.
2. Check out the implementations already in progress.
3. If necessary, create your own implementations.
4. Set up a Docker instance with the MOLGENIS application.[See Docker](/docker)
5. Import your own model and test it.

## Building Blocks
The building blocks are data elements related to patient information. Therefore, person information is embedded in patient/subject information.

Building blocks include:
* [Common data elements (JRC)](/Common_Data_Elements)
* [Other controlled Ontologies](/Biomedical_Ontologies) (available at [BioPortal](https://bioportal.bioontology.org))

To see implementations, refer to the following link:
* [Overview ERN implementation](/ERN_implementation) (each represented by an ERN involved in this project)

## Feedback
We welcome feedback on our repository and how we can improve our model. Please use [github issues](https://github.com/molgenis/RD-Registry/issues) to provide feedback on specific elements.
