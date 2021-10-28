# Minimal dataset Genturis Registry
* Status:  accepted (v01, 2021-10-27)
* Deciders: Genturis registry projectlead
* Date: 15 October 2021

## Context

Make it possible to add patient information manually in the Genturis registry. The framework to add patient information is the datamodel, in this model fields are defined, descriptions of questions are added, drop_down or radio button chosen. The datamodel is made in EMX_1, a newer version is available but not yet compatible with wishes of ERN Genturis. The Genturis datamodel needs the newest version of MOLGENIS(9.xx), since there are a lot of dependencies(expressions) on what you see in edit-mode.

- EMX 1
- Expressions (`validationExpression`, `visible`)
- Default values (`defaultValue`)
- Range values (`rangeMin`, `rangeMax`)
- Compounds (`partOfAttribute`)
- Date now (automatic adding creation date (`auto`))

## Decision

 All questions regarding patients are filled in one form. So all information is collected in one table of the MOLGENIS database. Each participating centre has its own patient table. So information from one centre is separated from another centre. Codebooks en option list(uses extends to templateOptionlist) are stored in a separate package. This package can be used by all centres (view-permissions).

Datamodel:
* [/data/Genturis_datamodel_v01_2021_10_27.xlsx](/ERN_implementation/ERN_Genturis/data/Genturis_datamodel_v01_2021_10_27.xlsx)
* [/data/Overview_codebooks.xlsx](/ERN_implementation/ERN_Genturis/data/Overview_codebooks.xlsx)

## Consequences

Each centre has its own Subject Package. So there is no possibility to search patients across different centres from the ERN Genturis.

## External links
- [data](/ERN_implementation/ERN_Genturis/data/)
