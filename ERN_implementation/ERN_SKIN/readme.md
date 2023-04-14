# ERRAS Registry

The [ERN-SKIN](https://ern-skin.eu/) registry is a central repository for rare skin diseases that connects medical experts and patient representatives to improve the diagnosis and management of patients with rare, complex, and undiagnosed skin diseases across Europe. As part of the ERN-Skin, the registry is structured into 9 Disease Groups and Transversal thematic Groups and utilizes an innovative e-health platform to construct a common Skin Diseases registry: [ERRAS](https://erras.molgeniscloud.org/).

The ERRAS registry is created using MOLGENIS, a modular web application for scientific data management. To learn more about MOLGENIS, users can refer to our [homepage](https://www.molgenis.org/) or check our [gitbook](https://molgenis.gitbook.io/molgenis/) for practical explanations.

## ERRAS Registry Manual Contents

This ERRAS Registry Manual is designed to help users navigate the ERRAS registry efficiently. Here are the contents of this manual:

- **[Logging in](/ERN_implementation/ERN_SKIN/manuals/loggingin.md)**: This section provides guidelines on how to log in to the ERRAS registry.
- **Uploading data**: This section covers how to upload patient data using different methods, including manual creation and bulk upload. It also includes guidelines for importing data using the Import Wizard, the quick importer, and the command line.
    * Importing the data using the Import Wizard
    * Importing the data using the quick importer
    * Importing data from the command line
- **Searching data**: This section provides information on how to search and retrieve data from the ERRAS registry.

## Repository Contents
This repository is part of the Rare Disease registries, [RD-Registry](https://github.com/molgenis/RD-Registry), and contains essential files, scripts, and manuals needed for maintaining the ERRAS registry. Here is a breakdown of the repository contents:

- [`metaData`](/ERN_implementation/ERN_SKIN/metaData/): This folder contains the latest EMX file from the ERRAS Registry. It includes codebooks, standard option lists, enum, text, string, date, and int values required for bulk upload.
- [`templates`](/ERN_implementation/ERN_SKIN/templates): This folder contains templates per disease group to use for bulk uploading patients. Users should refer to codebooks for correct identifiers.
- [`images`](/ERN_implementation/ERN_SKIN/images): This folder contains images used in the different ERRAS registry manuals.
- [`manuals`](/ERN_implementation/ERN_SKIN/manuals): This folder contains all manuals, also linked in this page.

Thank you for using the ERRAS registry. We hope this manual will help you make the most out of your experience with our platform. If you have any questions or concerns, please do not hesitate to contact us at [molgenis-support@umcg.nl](mailto:molgenis-support@umcg.nl).