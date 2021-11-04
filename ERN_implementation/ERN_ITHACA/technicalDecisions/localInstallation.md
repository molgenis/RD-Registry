# Local installation ILIAD Registry
* Status:  accepted (Paris(APHP) and Groningen(UMCG))
* Deciders: ILIAD registry project
* Date: 19 September 2021

## Context

Make it possible to locally install the ILIAD registry, to start collecting patient information (when waiting on data sharing/access agreement). On local installation, it is also possible to store personal information needed for SPIDER (first name, last name, and date of birth).

## Requirements:

- Time and expertise of local IT department
- Local infrastructure (ubuntu 20.04 (or other Linux server), 2 core, 4-8 Gb RAM, disk space of 25-50 Gb)
- Technical support contact [molgenis-support](molgenis-support@umcg.nl)
- Local users to upload patient information to the registry

## Steps to follow:
- Install [latest version MOLGENIS](https://github.com/molgenis/molgenis/releases)
- Follow the "chosen" [deploy way](https://molgenis.gitbook.io/molgenis/guide-deploy-molgenis)
- Check if MOLGENIS can be reached(http://localhost:8080)
- Log in (admin, admin)
- Change admin password
- Upload [ILIAD_Datamodel](/ERN_implementation/ERN_ITHACA/data/ILIAD_datamodel_v01_2021-11-04.xlsx)
- When needed add a new table for personal information or update the ILIAD data model before importing. See manual, on information[EMX](https://molgenis.gitbook.io/molgenis/data-management/guide-emx)
- Add new [users](https://molgenis.gitbook.io/molgenis/access-control/guide-users)
- Give users permissions this can be done by adding them to appropriate [group and role](https://molgenis.gitbook.io/molgenis/access-control/guide-groups-roles)

## Need to be developed:
- Way to include SPIDER on local installations or way to make sure that duplications within ERN ITHACA are prevented.
- Script to run nightly to upload pseudonymized patient data to **Central ILIAD Registry**
- Versioning, the data model used by local installation should be the same as the central registry. It is important for interoperability that central and local registries use the same version of the ILIAD data model.

## Consequences

If local instances of the ILIAD registry are installed, data is NOT stored in the central registry. Need to be decided how data should be transferred from local installation to central

## External links
- [data](/ERN_implementation/ERN_ITHACA/data/)
- [ansible galaxy](https://galaxy.ansible.com/molgenis/molgenis9)
- [MOLGENIS manual](https://molgenis.gitbook.io/molgenis/v/9.1/)
